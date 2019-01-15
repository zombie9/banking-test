class Statement

  attr_reader :transactions

  def initialize(transactions = [])
    @transactions = transactions
  end

  def add_transaction(date, credit, debit, blanace)
  end

end
