require 'rails_helper'

RSpec.describe Address, :type => :model do
  it {is_expected.to belong_to :contact}
  it {is_expected.to have_many :address_details}

  let(:address) { build :address}

  it 'is expected to be valid' do
    expect(address).to be_valid
  end

  it 'type is valid' do
    expect(address.name).to eq 'phone'
  end
end
