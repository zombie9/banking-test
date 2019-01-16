require 'account'

describe Account do

  it { is_expected.to respond_to(:statement).with(0).arguments }

  it 'should begin with a balance of 0' do
    expect(subject.balance).to eq 0
  end

  it { is_expected.to respond_to(:deposit).with(1).argument }

  describe '#deposit' do

    it 'should add a deposit to the balance' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end

    it 'should pass a deposit to statement' do
      subject.deposit(1000)
      expect(subject.statement.transactions[0][:balance]).to eq 1000
    end

  end

  it { is_expected.to respond_to(:withdraw).with(1).argument }

  describe '#withdraw' do

    it 'should deduct funds from the balance' do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.balance).to eq 50
    end

    it 'should not let balance drop below zero' do
      subject.deposit(99)
      subject.withdraw(100)
      expect(subject.balance).to eq 99
    end

  end

end
