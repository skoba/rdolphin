require 'rails_helper'

RSpec.describe Party, :type => :model do
  it {is_expected.to have_many :party_identities}
  it {is_expected.to have_many :contacts}
  it {is_expected.to have_many :party_details}

  let(:party) {build :party}

  it {is_expected.to be_valid}
  
  it 'meaning is PERSON' do
    expect(party.meaning).to eq 'PERSON'
  end
end
