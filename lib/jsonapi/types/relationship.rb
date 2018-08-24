# frozen_string_literal: true

module JSONAPI
  module Types
    # @see http://jsonapi.org/format/#document-resource-object-relationships
    class Relationship < Base
      attribute :data, JSONAPI::Types::Linkage.meta(omittable: true)
      attribute :meta, JSONAPI::Types::Meta.meta(omittable: true)
      attribute :links, JSONAPI::Types::Links.meta(omittable: true)

      def identifiers
        case data
        when Hash
          [data]
        when Array
          data
        else
          []
        end
      end

      def includes?(identifier)
        identifiers.include? identifier
      end
    end
  end
end
