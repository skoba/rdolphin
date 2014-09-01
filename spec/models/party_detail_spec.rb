require 'rails_helper'

RSpec.describe PartyDetail, :type => :model do
  it {is_expected.to belong_to :party}
  it {is_expected.to have_many :detail_items}

  let(:party_detail) {build :party_detail}
  
  it 'is valid' do
    expect(party_detail).to be_valid
  end
end
