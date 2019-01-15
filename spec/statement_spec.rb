require 'statement'

describe Statement do

  it 'should start with an empty list of transactions' do
    expect(subject.transactions.length).to eq 0
  end

end
