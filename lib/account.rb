class Account

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    sufficient_funds?(amount) ? @balance -= amount : insufficient_funds
  end

  private

  def sufficient_funds?(amount)
    @balance - amount >= 0
  end

  def insufficient_funds
    puts 'Sorry, you have infuccient funds'
  end

end
