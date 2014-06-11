RSpec.describe Address, :type => :model do
  it 'is valid with address_type' do
    expect(create :address).to be_valid
  end

  it 'is invalid without an address_type' do
    expect(Address.new(address_type: nil)).to have(1).error_on(:address_type)
  end
end
