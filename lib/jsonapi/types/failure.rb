# frozen_string_literal: true

module JSONAPI
  module Types
    class Failure < Document
      attribute :meta, JSONAPI::Types::Meta.meta(omittable: true)
      attribute :errors, Types::Array(JSONAPI::Types::Error)
    end
  end
end
