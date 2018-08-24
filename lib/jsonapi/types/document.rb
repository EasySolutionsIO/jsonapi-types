# frozen_string_literal: true

module JSONAPI
  module Types
    # @see http://jsonapi.org/format/#document-structure
    class Document < Base
      attribute :links, JSONAPI::Types::Links.meta(omittable: true)
      attribute :jsonapi, JSONAPI::Types::JSONAPIObject.meta(omittable: true)

      # @param payload [String, Hash]
      # @return [JSONAPI::Types::Document]
      def self.parse(payload)
        new payload.is_a?(String) ? parse_json(payload) : payload
      end

      # @param payload [String]
      # @return [Hash]
      def self.parse_json(payload)
        JSON.parse(payload, symbolize_names: true)
      rescue JSON::ParserError
        {}
      end
    end
  end
end
