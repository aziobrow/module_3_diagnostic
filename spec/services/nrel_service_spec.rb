require 'rails_helper'

describe NrelService do
  subject { NrelService.new(zipcode) }

  context "initialize" do
    it "returns an instance" do
      expect(subject).to be_a(NrelService)
    end
  end

end
