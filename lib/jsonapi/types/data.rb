# frozen_string_literal: true

module JSONAPI
  module Types
    Data = Constructor(Hash | Array) do |data|
      case data
      when Hash
        JSONAPI::Types::Resource.call(data)
      when Array
        Types::Array(JSONAPI::Types::Resource).call(data)
      end
    end
  end
end
