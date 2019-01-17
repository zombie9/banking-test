require 'account'
describe Account do

  describe '#deposit' do
    it 'should add a deposit to the balance' do
      deposit
      expect(subject.statement.transactions[0][:credit]).to eq "100.00"
    end
  end

  describe '#withdraw' do
    it 'should deduct funds from the balance' do
      deposit
      withdraw
      expect(subject.statement.transactions[1][:debit]).to eq "50.00"
    end

    it 'should not let balance drop below zero' do
      deposit
      expect { subject.withdraw(101) }.to raise_error "Sorry, insuffucient funds"
    end
  end

  describe '#print_statement' do
    it 'should print out a transaction' do
      subject.statement.add_transaction(1000, nil, 1000)
      expect do
        subject.print_statement
      end.to output("date || credit || debit || balance\n#{Time.now.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00\n").to_stdout
    end
  end

  private

  def deposit
    subject.deposit(100)
  end

  def withdraw
    subject.withdraw(50)
  end
end
