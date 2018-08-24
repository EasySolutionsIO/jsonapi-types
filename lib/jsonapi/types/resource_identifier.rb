# frozen_string_literal: true

module JSONAPI
  module Types
    # @see http://jsonapi.org/format/#document-resource-identifier-objects
    class ResourceIdentifier < Base
      attribute :id, Types::String
      attribute :type, Types::String
    end
  end
end
