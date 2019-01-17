require 'account'
describe Account do

  before(:each) do
    deposit
  end

  describe '#deposit' do
    it 'should add a deposit to the balance' do
      expect(subject.statement.transactions[0][:credit]).to eq 100
    end
  end

  describe '#withdraw' do
    it 'should deduct funds from the balance' do
      withdraw
      expect(subject.statement.transactions[1][:debit]).to eq 50
    end

    it 'should not let balance drop below zero' do
      expect { subject.withdraw(101) }.to raise_error "Sorry, insuffucient funds"
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
