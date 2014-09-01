require 'rails_helper'

RSpec.describe PartyIdentity, :type => :model do
  it {is_expected.to belong_to :party}

  let(:party_identity) {build :party_identity}

  it 'is valid' do
    expect(party_identity).to be_valid
  end

  it 'party name is legal name' do
    expect(party_identity.name).to eq 'person name'
  end

  it 'purpose is person name' do
    expect(party_identity.purpose).to eq 'legal name'
  end
  
end
