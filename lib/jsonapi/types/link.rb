# frozen_string_literal: true

module JSONAPI
  module Types
    class Link < Base
      attribute :href, Types::String
      attribute :meta, JSONAPI::Types::Meta.meta(omittable: true)
    end
  end
end
