# frozen_string_literal: true

require "spec_helper"

RSpec.describe JSONAPI::Types::Success do
  describe ".parse" do
    subject(:document) { described_class.parse(payload) }

    context "when primary data is an array" do
      let(:payload) { File.read("spec/fixtures/file/collection_response.json") }

      it { expect(document.links).to be_a(Hash) }
      it { expect(document.data).to be_an(Array) }
      it { expect(document.data.first).to be_a(JSONAPI::Types::Resource) }
      it { expect(document.data.first.relationships).to be_a(Hash) }
      it { expect(document.data.first.relationships[:comments]).to be_a(JSONAPI::Types::Relationship) }
      it { expect(document.data.first.relationships[:comments].links[:related]).to be_a(JSONAPI::Types::Link) }
      it { expect(document.data.first.relationships[:comments].links[:related].meta).to be_a(Hash) }
    end

    context "when primary data is a hash" do
      let(:payload) { File.read("spec/fixtures/file/individual_response.json") }

      it { expect(document.data).to be_an(JSONAPI::Types::Resource) }
      it { expect(document.data.relationships).to be_a(Hash) }
      it { expect(document.data.relationships[:comments]).to be_a(JSONAPI::Types::Relationship) }
    end
  end
end
