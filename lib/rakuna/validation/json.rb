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
        return true unless defined? json_schema
        @valid ||= ::JSON::Validator.validate validation_schema, input
      end
    end
  end
end
