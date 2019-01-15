require 'account'

describe Account do

  it 'should begin with a balance of 0' do
    expect(subject.balance).to eq 0
  end

end
