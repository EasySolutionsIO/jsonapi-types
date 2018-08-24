# frozen_string_literal: true

module JSONAPI
  module Types
    # @see http://jsonapi.org/format/#document-jsonapi-object
    class JSONAPIObject < Base
      attribute :version, Types::String.meta(omittable: true)
      attribute :meta, JSONAPI::Types::Meta.meta(omittable: true)
    end
  end
end
