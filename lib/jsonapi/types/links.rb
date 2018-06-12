# frozen_string_literal: true

module JSONAPI
  module Types
    Links = Map(Symbol, String | JSONAPI::Types::Link)
  end
end
