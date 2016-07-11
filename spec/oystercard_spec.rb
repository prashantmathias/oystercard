require 'oystercard'
describe Oystercard do
  describe "#initialize" do
    it "initializes with a default balance" do
      expect(subject.balance).to eq 0
    end
  end

  describe "#top_up" do
    it "can top up the balance" do
      expect{ subject.top_up(1) }.to change{ subject.balance }.by 1
    end
    it "stops the user adding money past the limit" do
      subject.top_up(90)
      expect{ subject.top_up(1) }.to raise_error("You can't add money beyond the limit of #{Oystercard::LIMIT}")
    end
  end

  describe "#full?" do
    it "checks whether balance limit is reached" do
      subject.top_up(90)
      expect(subject.full?).to eq true
    end
  end

end
