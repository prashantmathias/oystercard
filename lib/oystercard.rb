class Oystercard
  DEFAULT_BALANCE = 0
  LIMIT = 90
  def initialize
    @balance = DEFAULT_BALANCE
  end

  attr_reader :balance

  def top_up(money)
    raise "You can't add money beyond the limit of #{LIMIT}" if full?
    @balance += money
  end

  def full?
    @balance >= LIMIT
  end
end
