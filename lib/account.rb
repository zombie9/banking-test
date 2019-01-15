class Account

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance - amount >= 0
      @balance -= amount
    else
      puts 'Sorry, you have infuccient funds'
    end
  end

end
