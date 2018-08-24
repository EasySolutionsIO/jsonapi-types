# frozen_string_literal: true

module JSONAPI
  module Types
    # @see http://jsonapi.org/format/#errors
    class Error < Base
      attribute :id, Types::String.meta(omittable: true)
      attribute :code, Types::String.meta(omittable: true)
      attribute :title, Types::String.meta(omittable: true)
      attribute :detail, Types::String.meta(omittable: true)
      attribute :status, Types::String.meta(omittable: true)
      attribute :meta, JSONAPI::Types::Meta.meta(omittable: true)
      attribute :links, JSONAPI::Types::Links.meta(omittable: true)
      attribute :source, JSONAPI::Types::ErrorSource.meta(omittable: true)
    end
  end
end
