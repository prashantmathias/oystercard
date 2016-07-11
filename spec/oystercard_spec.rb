require 'oystercard'
describe Oystercard do
  describe "#initialize" do
    it "initializes with a default balance" do
      expect(subject.balance).to eq 0
    end
  end

  describe "#top_up" do
    it "adds money to card" do
      expect(subject.top_up(23)).to eq 23
    end

    it "can top up the balance" do
      expect{ subject.top_up(1) }.to change{ subject.balance }.by 1
    end
  end


end
