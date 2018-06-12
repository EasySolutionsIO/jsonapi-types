# frozen_string_literal: true

require "spec_helper"

RSpec.describe JSONAPI::Types::Success do
  describe ".parse" do
    let(:document) { described_class.parse(payload) }

    context "when primary data is an array" do
      let(:payload) { File.read("spec/fixtures/file/collection_response.json") }

      it "parses payload correctly" do
        expect(document.links).to be_a Hash
        expect(document.data).to be_an Array

        resource = document.data.first

        expect(resource).to be_a JSONAPI::Types::Resource
        expect(resource.relationships).to be_a Hash

        relationship = resource.relationships[:comments]

        expect(relationship).to be_a JSONAPI::Types::Relationship

        link = relationship.links[:related]

        expect(link).to be_a JSONAPI::Types::Link
        expect(link.meta).to be_a Hash
      end
    end

    context "when primary data is a hash" do
      let(:payload) { File.read("spec/fixtures/file/individual_response.json") }

      it "parses payload correctly" do
        expect(document.data).to be_an JSONAPI::Types::Resource
        expect(document.data.relationships).to be_a Hash

        relationship = document.data.relationships[:comments]

        expect(relationship).to be_a JSONAPI::Types::Relationship
      end
    end
  end
end
