require 'contracts'
require 'rakuna/accepts/json'
require 'json-schema'

module Rakuna
  module Validation
    module JSON
      include Contracts
      include Rakuna::Accepts::JSON

      Contract None => Bool
      def payload_valid?
        warn 'NOTE: payload_valid? is deprecated; use json_valid? instead.'
        json_valid?
      end

      Contract None => Bool
      def json_valid?
        return true unless defined? json_schema
        @valid ||= ::JSON::Validator.validate json_schema, input
      end
    end
  end
end
