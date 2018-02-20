module Prefab
  class LoggerClient

    SEP = ".".freeze
    BASE = "log_level".freeze

    def initialize(base_client, base_logger)
      @base_client = base_client
      @base_logger = base_logger
    end

    def debug msg
      pf_log :debug, msg, caller_locations(1, 1)[0]
    end

    def info msg
      pf_log :info, msg, caller_locations(1, 1)[0]
    end

    def warn msg
      pf_log :warn, msg, caller_locations(1, 1)[0]
    end

    def error msg
      pf_log :error, msg, caller_locations(1, 1)[0]
    end

    def log_for level, msg, loc
      pf_log_internal level, msg, "", loc
    end

    private

    def pf_log(level, msg, loc)
      pf_log_internal level, msg, loc.absolute_path, loc.base_label
    end

    def pf_log_internal(level, msg, absolute_path, base_label)

      path = absolute_path + ""
      path.slice! Dir.pwd

      path = "#{path.gsub("/", SEP).gsub(".rb", "")}#{SEP}#{base_label}"
      path.slice! SEP

      closest_log_level_match = @base_client.config_client.get(BASE) || :warn
      path.split(SEP).inject([BASE]) do |memo, n|
        memo << n
        val = @base_client.config_client.get memo.join(SEP)
        unless val.nil?
          closest_log_level_match = val
        end
        memo
      end

      if val(closest_log_level_match) <= val(level)
        @base_logger.unknown "#{level.to_s.upcase.ljust(5)} #{path} #{msg}"
      end
    end

    def val level
      case level.to_sym
      when :debug then
        1
      when :info then
        2
      when :warn then
        3
      when :error then
        4
      end
    end
  end
end
