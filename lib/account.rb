require_relative 'statement.rb'

# class describes a client's bank account
class Account
  attr_reader :balance, :statement

  def initialize(balance = 0, statement = Statement.new)
    @balance = balance
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.add_transaction(amount, nil, @balance)
  end

  def withdraw(amount)
    sufficient_funds?(amount) ? @balance -= amount : insufficient_funds
    @statement.add_transaction(nil, amount, @balance)
  end

  private

  def sufficient_funds?(amount)
    @balance - amount >= 0
  end

  def insufficient_funds
    puts 'Sorry, you have insuffucient funds'
  end
end
