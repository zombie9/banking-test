require 'account'
describe Account do
  it { is_expected.to respond_to(:statement).with(0).arguments }

  it 'should begin with a balance of 0' do
    expect(subject.balance).to eq 0
  end

  it { is_expected.to respond_to(:deposit).with(1).argument }

  describe '#deposit' do
    it 'should add a deposit to the balance' do
      deposit
      expect(subject.balance).to eq 100
    end

    it 'should pass a deposit to statement' do
      deposit
      expect(subject.statement.transactions[0][:balance]).to eq 100
    end
  end

  it { is_expected.to respond_to(:withdraw).with(1).argument }

  describe '#withdraw' do
    it 'should deduct funds from the balance' do
      deposit
      withdraw
      expect(subject.balance).to eq 50
    end

    it 'should not let balance drop below zero' do
      deposit
      subject.withdraw(101)
      expect(subject.balance).to eq 100
    end

    it 'should pass withdraw to statement' do
      deposit
      withdraw
      expect(subject.statement.transactions[1][:balance]).to eq 50
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
