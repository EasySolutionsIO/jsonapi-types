# frozen_string_literal: true

module JSONAPI
  module Types
    class ErrorSource < Base
      attribute :pointer, Types::String.meta(omittable: true)
      attribute :parameter, Types::String.meta(omittable: true)

      def attribute
        pointer.split("/").last if pointer # rubocop:disable Style/SafeNavigation
      end
    end
  end
end
