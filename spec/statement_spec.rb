require 'statement'

describe Statement do

  it 'should start with an empty list of transactions' do
    expect(subject.transactions.length).to eq 0
  end

  it { is_expected.to respond_to(:add_transaction).with(3).arguments }

  describe '#add_transaction' do

    it 'should add a transaction hash to transactions array' do
      subject.add_transaction(1000, 0, 1000)
      expect(subject.transactions.length).to eq 1
      expect(subject.transactions[0][:balance]).to eq 1000
    end

  end

  it { is_expected.to respond_to(:print).with(0).arguments }

end
