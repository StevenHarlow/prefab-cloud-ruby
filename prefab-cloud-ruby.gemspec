# Generated by juwelier
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Juwelier::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: prefab-cloud-ruby 1.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "prefab-cloud-ruby".freeze
  s.version = "1.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jeff Dwyer".freeze]
  s.date = "2024-04-10"
  s.description = "Feature Flags, Live Config, and Dynamic Log Levels as a service".freeze
  s.email = "jdwyer@prefab.cloud".freeze
  s.extra_rdoc_files = [
    "CHANGELOG.md",
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".envrc.sample",
    ".github/workflows/ruby.yml",
    ".gitmodules",
    ".rubocop.yml",
    ".tool-versions",
    "CHANGELOG.md",
    "CODEOWNERS",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "compile_protos.sh",
    "dev/allocation_stats",
    "dev/benchmark",
    "dev/console",
    "lib/prefab-cloud-ruby.rb",
    "lib/prefab/client.rb",
    "lib/prefab/config_client.rb",
    "lib/prefab/config_client_presenter.rb",
    "lib/prefab/config_loader.rb",
    "lib/prefab/config_resolver.rb",
    "lib/prefab/config_value_unwrapper.rb",
    "lib/prefab/config_value_wrapper.rb",
    "lib/prefab/context.rb",
    "lib/prefab/context_shape.rb",
    "lib/prefab/context_shape_aggregator.rb",
    "lib/prefab/criteria_evaluator.rb",
    "lib/prefab/duration.rb",
    "lib/prefab/encryption.rb",
    "lib/prefab/error.rb",
    "lib/prefab/errors/env_var_parse_error.rb",
    "lib/prefab/errors/initialization_timeout_error.rb",
    "lib/prefab/errors/invalid_api_key_error.rb",
    "lib/prefab/errors/missing_default_error.rb",
    "lib/prefab/errors/missing_env_var_error.rb",
    "lib/prefab/errors/uninitialized_error.rb",
    "lib/prefab/evaluation.rb",
    "lib/prefab/evaluation_summary_aggregator.rb",
    "lib/prefab/example_contexts_aggregator.rb",
    "lib/prefab/exponential_backoff.rb",
    "lib/prefab/feature_flag_client.rb",
    "lib/prefab/http_connection.rb",
    "lib/prefab/internal_logger.rb",
    "lib/prefab/local_config_parser.rb",
    "lib/prefab/log_path_aggregator.rb",
    "lib/prefab/logger_client.rb",
    "lib/prefab/murmer3.rb",
    "lib/prefab/options.rb",
    "lib/prefab/periodic_sync.rb",
    "lib/prefab/prefab.rb",
    "lib/prefab/rate_limit_cache.rb",
    "lib/prefab/resolved_config_presenter.rb",
    "lib/prefab/time_helpers.rb",
    "lib/prefab/weighted_value_resolver.rb",
    "lib/prefab/yaml_config_parser.rb",
    "lib/prefab_pb.rb",
    "prefab-cloud-ruby.gemspec",
    "test/.prefab.default.config.yaml",
    "test/.prefab.unit_tests.config.yaml",
    "test/integration_test.rb",
    "test/integration_test_helpers.rb",
    "test/support/common_helpers.rb",
    "test/support/mock_base_client.rb",
    "test/support/mock_config_client.rb",
    "test/support/mock_config_loader.rb",
    "test/test_client.rb",
    "test/test_config_client.rb",
    "test/test_config_loader.rb",
    "test/test_config_resolver.rb",
    "test/test_config_value_unwrapper.rb",
    "test/test_config_value_wrapper.rb",
    "test/test_context.rb",
    "test/test_context_shape.rb",
    "test/test_context_shape_aggregator.rb",
    "test/test_criteria_evaluator.rb",
    "test/test_duration.rb",
    "test/test_encryption.rb",
    "test/test_evaluation_summary_aggregator.rb",
    "test/test_example_contexts_aggregator.rb",
    "test/test_exponential_backoff.rb",
    "test/test_feature_flag_client.rb",
    "test/test_helper.rb",
    "test/test_integration.rb",
    "test/test_internal_logger.rb",
    "test/test_local_config_parser.rb",
    "test/test_log_path_aggregator.rb",
    "test/test_logger.rb",
    "test/test_logger_initialization.rb",
    "test/test_options.rb",
    "test/test_prefab.rb",
    "test/test_rate_limit_cache.rb",
    "test/test_weighted_value_resolver.rb"
  ]
  s.homepage = "http://github.com/prefab-cloud/prefab-cloud-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Prefab Ruby Infrastructure".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0", ">= 1.0.5"])
    s.add_runtime_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<googleapis-common-protos-types>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<google-protobuf>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<ld-eventsource>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<uuid>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4"])
    s.add_runtime_dependency(%q<semantic_logger>.freeze, [">= 0"])
    s.add_development_dependency(%q<benchmark-ips>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<juwelier>.freeze, ["~> 2.4.9"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
  else
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0", ">= 1.0.5"])
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_dependency(%q<googleapis-common-protos-types>.freeze, [">= 0"])
    s.add_dependency(%q<google-protobuf>.freeze, [">= 0"])
    s.add_dependency(%q<ld-eventsource>.freeze, [">= 0"])
    s.add_dependency(%q<uuid>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 4"])
    s.add_dependency(%q<semantic_logger>.freeze, [">= 0"])
    s.add_dependency(%q<benchmark-ips>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<juwelier>.freeze, ["~> 2.4.9"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end

