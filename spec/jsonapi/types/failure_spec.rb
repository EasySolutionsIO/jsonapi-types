# frozen_string_literal: true

require "spec_helper"

RSpec.describe JSONAPI::Types::Failure do
  describe ".parse" do
    let(:document) { described_class.parse(payload) }

    let(:payload) { File.read("spec/fixtures/file/error_response.json") }

    it "parses payload correctly" do
      expect(document.errors).to be_an Array

      error = document.errors.first

      expect(error).to be_a JSONAPI::Types::Error
      expect(error.source).to be_a JSONAPI::Types::ErrorSource
    end
  end
end
