require 'account'

describe Account do

  it 'should begin with a balance of 0' do
    expect(subject.balance).to eq 0
  end

  it { is_expected.to respond_to(:deposit).with(1).argument }

  describe '#deposit' do

    it 'should add a deposit to the balance' do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end

  end

end
