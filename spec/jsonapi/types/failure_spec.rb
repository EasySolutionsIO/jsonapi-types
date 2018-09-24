# frozen_string_literal: true

require "spec_helper"

RSpec.describe JSONAPI::Types::Failure do
  describe ".parse" do
    subject(:document) { described_class.parse(payload) }

    let(:payload) { File.read("spec/fixtures/file/error_response.json") }

    it { expect(document.errors).to be_an(Array) }
    it { expect(document.errors.first).to be_a(JSONAPI::Types::Error) }
    it { expect(document.errors.first.source).to be_a(JSONAPI::Types::ErrorSource) }
  end
end
