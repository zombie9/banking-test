# class describing a bank account statement
class Statement
  attr_reader :transactions

  def initialize(transactions = [])
    @transactions = transactions
  end

  def add_transaction(credit, debit, balance)
    @transactions << { date: Time.now.strftime('%d/%m/%Y'),
                       credit: format_currency(credit),
                       debit: format_currency(debit),
                       balance: format_currency(balance) }
  end

  def print
    puts 'date || credit || debit || balance'
    @transactions.reverse.each do |t|
      puts "#{t[:date]} || #{t[:credit]} || #{t[:debit]} || #{t[:balance]}"
    end
  end

  def get_transactions
    @transactions
  end

  private

  def format_currency(amount)
    format('%.2f', amount) if amount != nil
  end

end
