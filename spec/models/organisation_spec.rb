RSpec.describe Organisation, :type => :model do
  let(:organisation) {build :organisation}

  it 'is valid' do
    expect(organisation).to be_valid
  end

  it 'assigns Organisation to type' do
    expect(organisation.type).to eq 'Organisation'
  end

  it 'has many identifiers' do
    expect(organisation).to have_many(:identifiers)
  end
end
