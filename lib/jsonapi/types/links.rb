# frozen_string_literal: true

module JSONAPI
  # @see http://jsonapi.org/format/#document-links
  module Types
    Links = Map(Symbol, String | JSONAPI::Types::Link)
  end
end
