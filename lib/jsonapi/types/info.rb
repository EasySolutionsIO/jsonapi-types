# frozen_string_literal: true

module JSONAPI
  module Types
    class Info < Document
      attribute :meta, JSONAPI::Types::Meta
    end
  end
end
