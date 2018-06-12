# frozen_string_literal: true

module JSONAPI
  module Types
    class Base < Dry::Struct
      transform_keys(&:to_sym)

      def to_json(*args)
        to_hash.to_json(args)
      end
    end
  end
end
