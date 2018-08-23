# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jsonapi/types/version"

Gem::Specification.new do |spec|
  spec.name = "jsonapi-types"
  spec.email = ["pablocrivella@gmail.com", "info@inspire.nl"]
  spec.license = "MIT"
  spec.version = JSONAPI::Types::VERSION
  spec.authors = ["Pablo Crivella", "InspireNL"]
  spec.summary = "JSON API Types definitions"
  spec.homepage = "https://github.com/InspireNL/jsonapi-types"
  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/InspireNL/jsonapi-types/issues",
    "changelog_uri"   => "https://github.com/InspireNL/jsonapi-types/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/InspireNL/jsonapi-types"
  }
  spec.files = Dir["lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "dry-struct", "~> 0.5"
  spec.add_runtime_dependency "dry-types", "~> 0.13"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry", "~> 0.11"
  spec.add_development_dependency "pry-byebug", "~> 3.6"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec_junit_formatter", "~> 0.4"
  spec.add_development_dependency "simplecov", "~> 0.16"
end
