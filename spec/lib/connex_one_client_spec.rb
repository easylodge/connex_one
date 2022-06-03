require 'spec_helper'
describe ::ConnexOneClient::Api do
  subject { described_class.new(base_url: "www.test.com/", api_key: "test") }

  describe "#http" do
    it "returns an instance of HTTParty" do
      expect(subject).to eq()
    end
  end

  describe "#headers" do
    it "formats the headers" do
      expect(subject.headers).to eq()
    end
  end

  describe "#get" do
    it "creates a get request" do
      expect(subject.get).to eq()
    end
  end

  describe "#patch" do
    it "creates a patch request" do
      expect(subject.patch).to eq()
    end
  end

  describe "#post" do
    it "creates a post request" do
      expect(subject.post).to eq()
    end
  end

  describe "#delete" do
    it "creates a delete request" do
      expect(subject.delete).to eq()
    end
  end

end