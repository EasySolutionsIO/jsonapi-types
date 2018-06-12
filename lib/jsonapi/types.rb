# frozen_string_literal: true

require "dry-types"
require "dry-struct"
require "json"

require "jsonapi/types/version"

module JSONAPI
  module Types
    include Dry::Types.module
  end
end

require "jsonapi/types/base"
require "jsonapi/types/resource_identifier"
require "jsonapi/types/meta"
require "jsonapi/types/jsonapi_object"
require "jsonapi/types/link"
require "jsonapi/types/link"
require "jsonapi/types/links"
require "jsonapi/types/error_source"
require "jsonapi/types/error"
require "jsonapi/types/linkage"
require "jsonapi/types/relationship"
require "jsonapi/types/relationships"
require "jsonapi/types/resource"
require "jsonapi/types/data"
require "jsonapi/types/document"
require "jsonapi/types/failure"
require "jsonapi/types/success"
require "jsonapi/types/info"
require "jsonapi/types/version"
