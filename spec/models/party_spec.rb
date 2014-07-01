RSpec.describe Party, :type => :model do
  let(:party) {build :party}

  it 'is valid' do
    expect(party).to be_valid
  end

  it 'assigns Party to type' do
    expect(party.type).to eq 'Party'
  end

  it 'has many identifiers' do
    expect(party).to have_many(:identifiers)
  end

  it 'has many addresses' do
    expect(party).to have_many(:addresses)
  end

  it 'has many telecoms' do
    expect(party).to have_many(:telecoms)
  end
end
