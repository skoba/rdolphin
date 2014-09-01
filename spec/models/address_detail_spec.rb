require 'rails_helper'

RSpec.describe AddressDetail, :type => :model do
  it {is_expected.to belong_to :address}

  let(:address_detail) {build :address_detail}

  it 'is valid' do
    expect(address_detail).to be_valid
  end

  it 'name is City' do
    expect(address_detail.name).to eq 'City'
  end

  it 'value is Kyoto' do
    expect(address_detail.value).to eq 'Kyoto'
  end
end
