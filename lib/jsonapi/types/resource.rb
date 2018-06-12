# frozen_string_literal: true

module JSONAPI
  module Types
    class Resource < Base
      transform_keys { |key| { attributes: :resource_attributes }.fetch(key.to_sym, key.to_sym) }

      attribute :id, Types::String.meta(omittable: true)
      attribute :type, Types::String
      # Renamed to avoid collision with Dry::Struct#attributes
      attribute :resource_attributes, Types::JSON::Hash.default({}).meta(omittable: true)
      attribute :relationships, JSONAPI::Types::Relationships.meta(omittable: true)
      attribute :links, JSONAPI::Types::Links.meta(omittable: true)

      def identifier
        ResourceIdentifier.new(id: id, type: type)
      end
    end
  end
end
