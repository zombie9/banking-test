class Statement

  attr_reader :transactions

  def initialize(transactions = [])
    @transactions = transactions
  end

  def add_transaction(credit, debit, balance)
    @transactions << {:date => Time.now,
                     :credit => credit,
                     :debit => debit,
                     :balance => balance}
  end

end
