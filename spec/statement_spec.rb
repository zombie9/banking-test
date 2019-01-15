require 'statement'

describe Statement do

  it 'should start with an empty list of transactions' do
    expect(subject.transactions.length).to eq 0
  end

  it { is_expected.to respond_to(:add_transaction).with(4).arguments }

end
