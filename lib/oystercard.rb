class Oystercard
  DEFAULT_BALANCE = 0
  def initialize
    @balance = DEFAULT_BALANCE
  end

  attr_reader :balance
end
