# frozen_string_literal: true

module JSONAPI
  module Types
    class ResourceIdentifier < Base
      attribute :id, Types::String
      attribute :type, Types::String
    end
  end
end
