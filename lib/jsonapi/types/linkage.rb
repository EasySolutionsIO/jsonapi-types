# frozen_string_literal: true

module JSONAPI
  module Types
    Linkage = Constructor(Hash | Array) do |data|
      case data
      when Hash
        JSONAPI::Types::ResourceIdentifier.call(data)
      when Array
        Types::Array(JSONAPI::Types::ResourceIdentifier).call(data)
      end
    end
  end
end
