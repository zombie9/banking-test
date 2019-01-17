require 'statement'

describe Statement do
  it 'should start with an empty list of transactions' do
    expect(subject.transactions.length).to eq 0
  end

  describe '#add_transaction' do
    it 'should add a transaction hash to transactions array' do
      subject.add_transaction(1000, nil, 1000)
      expect(subject.transactions[0][:balance]).to eq "1000.00"
    end
  end

  describe '#print' do
    it 'should print out a transaction' do
      subject.add_transaction(1000, nil, 1000)
      expect do
        subject.print
      end.to output("date || credit || debit || balance\n#{Time.now.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00\n").to_stdout
    end
  end
end
