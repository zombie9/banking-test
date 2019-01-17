require_relative 'statement.rb'

# class describes a client's bank account
class Account
  attr_reader :statement

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

  def print_statement
    @statement.print
  end

  private

  def sufficient_funds?(amount)
    @balance - amount >= 0
  end

  def insufficient_funds
    raise 'Sorry, insuffucient funds'
  end
end
