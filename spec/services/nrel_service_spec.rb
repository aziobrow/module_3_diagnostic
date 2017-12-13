require 'rails_helper'

describe NrelService do
  subject { NrelService.new(80203) }

  context "initialize" do
    it "returns an instance" do
      expect(subject).to be_a(NrelService)
    end
  end

  context "instance methods" do
    it "returns a collection of station info" do
      all_station_info = subject.get_station_info
      one_station_info = all_station_info.first

      expect(all_station_info.count).to eq(10)
      expect(one_station_info).to be_a(Hash)
    end

  end

end
