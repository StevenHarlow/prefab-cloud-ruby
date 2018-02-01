# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: prefab.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "prefab.ConfigServicePointer" do
    optional :account_id, :int64, 1
    optional :start_at_id, :int64, 2
  end
  add_message "prefab.ConfigDelta" do
    optional :id, :int64, 2
    optional :key, :string, 3
    optional :value, :message, 4, "prefab.ConfigValue"
  end
  add_message "prefab.ConfigValue" do
    oneof :type do
      optional :int, :int64, 1
      optional :string, :string, 2
      optional :bytes, :bytes, 3
      optional :double, :double, 4
      optional :bool, :bool, 5
      optional :feature_flag, :message, 6, "prefab.FeatureFlag"
    end
  end
  add_message "prefab.ConfigDeltas" do
    repeated :deltas, :message, 1, "prefab.ConfigDelta"
  end
  add_message "prefab.UpsertRequest" do
    optional :account_id, :int64, 1
    optional :config_delta, :message, 2, "prefab.ConfigDelta"
    optional :previous_key, :string, 3
  end
  add_message "prefab.LimitResponse" do
    optional :passed, :bool, 1
    optional :expires_at, :int64, 2
    optional :enforced_group, :string, 3
    optional :current_bucket, :int64, 4
    optional :policy_group, :string, 5
    optional :policy_name, :enum, 6, "prefab.LimitResponse.LimitPolicyNames"
    optional :policy_limit, :int32, 7
    optional :amount, :int64, 8
    optional :limit_reset_at, :int64, 9
    optional :safety_level, :enum, 10, "prefab.LimitDefinition.SafetyLevel"
  end
  add_enum "prefab.LimitResponse.LimitPolicyNames" do
    value :NOT_SET, 0
    value :SECONDLY_ROLLING, 1
    value :MINUTELY_ROLLING, 3
    value :HOURLY_ROLLING, 5
    value :DAILY_ROLLING, 7
    value :MONTHLY_ROLLING, 8
    value :INFINITE, 9
    value :YEARLY_ROLLING, 10
  end
  add_message "prefab.LimitRequest" do
    optional :account_id, :int64, 1
    optional :acquire_amount, :int32, 2
    repeated :groups, :string, 3
    optional :limit_combiner, :enum, 4, "prefab.LimitRequest.LimitCombiner"
    optional :allow_partial_response, :bool, 5
  end
  add_enum "prefab.LimitRequest.LimitCombiner" do
    value :NOT_SET, 0
    value :MINIMUM, 1
    value :MAXIMUM, 2
  end
  add_message "prefab.FeatureFlag" do
    optional :feature, :string, 2
    optional :pct, :double, 3
    repeated :whitelisted, :string, 4
  end
  add_message "prefab.LimitDefinition" do
    optional :group, :string, 1
    optional :policy_name, :enum, 2, "prefab.LimitResponse.LimitPolicyNames"
    optional :limit, :int32, 3
    optional :burst, :int32, 4
    optional :account_id, :int64, 5
    optional :last_modified, :int64, 6
    optional :returnable, :bool, 7
    optional :safety_level, :enum, 8, "prefab.LimitDefinition.SafetyLevel"
  end
  add_enum "prefab.LimitDefinition.SafetyLevel" do
    value :NOT_SET, 0
    value :L4_BEST_EFFORT, 4
    value :L5_BOMBPROOF, 5
  end
  add_message "prefab.LimitDefinitions" do
    repeated :definitions, :message, 1, "prefab.LimitDefinition"
  end
  add_message "prefab.FeatureFlags" do
    repeated :flags, :message, 1, "prefab.FeatureFlag"
    optional :cache_expiry, :int64, 2
  end
  add_message "prefab.BufferedRequest" do
    optional :account_id, :int64, 1
    optional :method, :string, 2
    optional :uri, :string, 3
    optional :body, :string, 4
    repeated :limit_groups, :string, 5
    optional :content_type, :string, 6
    optional :fifo, :bool, 7
  end
  add_message "prefab.BatchRequest" do
    optional :account_id, :int64, 1
    optional :method, :string, 2
    optional :uri, :string, 3
    optional :body, :string, 4
    repeated :limit_groups, :string, 5
    optional :batch_template, :string, 6
    optional :batch_separator, :string, 7
  end
  add_enum "prefab.OnFailure" do
    value :NOT_SET, 0
    value :LOG_AND_PASS, 1
    value :LOG_AND_FAIL, 2
    value :THROW, 3
  end
end

module Prefab
  ConfigServicePointer = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.ConfigServicePointer").msgclass
  ConfigDelta = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.ConfigDelta").msgclass
  ConfigValue = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.ConfigValue").msgclass
  ConfigDeltas = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.ConfigDeltas").msgclass
  UpsertRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.UpsertRequest").msgclass
  LimitResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.LimitResponse").msgclass
  LimitResponse::LimitPolicyNames = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.LimitResponse.LimitPolicyNames").enummodule
  LimitRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.LimitRequest").msgclass
  LimitRequest::LimitCombiner = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.LimitRequest.LimitCombiner").enummodule
  FeatureFlag = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.FeatureFlag").msgclass
  LimitDefinition = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.LimitDefinition").msgclass
  LimitDefinition::SafetyLevel = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.LimitDefinition.SafetyLevel").enummodule
  LimitDefinitions = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.LimitDefinitions").msgclass
  FeatureFlags = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.FeatureFlags").msgclass
  BufferedRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.BufferedRequest").msgclass
  BatchRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.BatchRequest").msgclass
  OnFailure = Google::Protobuf::DescriptorPool.generated_pool.lookup("prefab.OnFailure").enummodule
end
