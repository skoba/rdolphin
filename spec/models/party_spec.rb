require 'rails_helper'

RSpec.describe Party, :type => :model do
  let(:party) {build :party}

  it {is_expected.to be_valid}
  
  it 'meaning is PERSON' do
    expect(party.meaning).to eq 'PERSON'
  end
end
