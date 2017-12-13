require 'rails_helper'

describe NrelService do
  subject { NrelService.new(80203) }

  context "initialize" do
    it "returns an instance" do
      expect(subject).to be_a(NrelService)
    end
  end

end
