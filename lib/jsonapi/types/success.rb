# frozen_string_literal: true

module JSONAPI
  module Types
    class Success < Document
      attribute :data, JSONAPI::Types::Data
      attribute :meta, JSONAPI::Types::Meta.meta(omittable: true)
      attribute :included, Types::Array(JSONAPI::Types::Resource).meta(omittable: true)
    end
  end
end
