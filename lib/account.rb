require_relative 'statement.rb'

class Account

  attr_reader :balance, :statement

  def initialize(balance = 0, statement = Statement.new)
    @balance = balance
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.add_transaction(amount, 0, @balance)
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
