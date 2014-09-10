require 'rails_helper'

RSpec.describe Person, :type => :model do
  it {is_expected.to have_many :party_identities }
  it {is_expected.to have_many :contacts }
  it {is_expected.to have_one :ehr}

  let(:person) {create :person}

  it 'is valid' do
    expect(person).to be_valid
  end

  context 'party identifiers' do
    it 'has 3 items' do
      expect(person.party_identities).to have(3).items
    end

    context 'person name' do
      let(:person_name) do
        person.party_identities.where(name: 'person name').first
      end
      
      it 'person name has 2 items' do
        expect(person_name.identity_details).to have(2).items
      end
      
      it 'given name is Shinji' do
        expect(person_name.identity_details.where(name: 'given name').first.value).to eq 'Shinji'
      end
      
      it 'Family name is KOBAYASHI' do
        expect(person_name.identity_details.where(name: 'family name').first.value).to eq 'KOBAYASHI'
      end
    end

    context 'local_identifier' do
      let(:local_identifier) do
        person.party_identities.where(name: 'local id').first
      end

      it 'local identifier has 1 item' do
        expect(local_identifier.identity_details).to have(1).item
      end

      it 'local idenfier was issued from Kyoto university' do
        expect(local_identifier.purpose).to eq 'Kyoto university hospital'
      end

      it 'local id is 012345' do
        expect(local_identifier.identity_details.where(name: 'id').first.value).to eq '012345'
      end
    end

    context 'regional identifier' do
      let(:regional_identifier) do
        person.party_identities.where(name: 'regional id').first
      end

      it 'regional identifier issued by Maiko network' do
        expect(regional_identifier.purpose).to eq 'Maiko network'
      end

      it 'regional identifier is abcdefg' do
        expect(regional_identifier.identity_details.where(name: 'maiko id').first.value).to eq 'abcdefg'
      end
    end
  end

  context 'contacts' do
    it 'person has 2 contacts' do
      expect(person.contacts).to have(2).items
    end
  end

  context 'details' do
    it 'person has 1 details' do
      expect(person.party_details).to have(1).item
    end
  end
end
