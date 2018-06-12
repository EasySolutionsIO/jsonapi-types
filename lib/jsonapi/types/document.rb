# frozen_string_literal: true

module JSONAPI
  module Types
    class Document < Base
      attribute :links, JSONAPI::Types::Links.meta(omittable: true)
      attribute :jsonapi, JSONAPI::Types::JSONAPIObject.meta(omittable: true)

      def self.parse(payload)
        new payload.is_a?(String) ? parse_json(payload) : payload
      end

      def self.parse_json(payload)
        JSON.parse(payload, symbolize_names: true)
      rescue JSON::ParserError
        {}
      end
    end
  end
end
