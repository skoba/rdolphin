require 'rails_helper'

RSpec.describe Contact, :type => :model do
  it {is_expected.to belong_to :party}
  it {is_expected.to have_many :addresses }

  let(:contact) { build :contact}

  it { is_expected.to be_valid }

  it 'name is valid' do
    expect(contact.name).to eq 'home'
  end

  it 'purpose is valid' do
    expect(contact.purpose).to eq 'CLAIM'
  end

  it 'is valid from' do
    expect(contact.valid_from).to eq Date.parse('2014-09-01')
  end

  it 'is valid to' do
    expect(contact.valid_to).to eq Date.parse('2015-09-01')
  end
end
