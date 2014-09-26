require 'rails_helper'

RSpec.describe MMLPatient, :type => :model do
  let(:mml_patient) { create :mml_patient }

  context 'unique info' do
    it 'master_id is abcdefg' do
      expect(mml_patient.master_id).to eq 'abcdefg'
    end
  end

  # context 'other ids' do
  #   it 'other_ids has 1 item' do
  #     expect(mml_patient.other_ids).to have(1).item
  #   end

  #   it 'other_ids value is 012345' do
  #     expect(mml_patient.other_ids.first.identity_details(name: 'id').first.value).to eq '012345'
  #   end
  # end

  # context 'person name' do
  #   it 'personal name has 1 item' do
  #     expect(mml_patient.person_name).to have(1).item
  #   end

  #   let(:person_name) {mml_patient.person_name.first}
    
  #   it 'given name is Shinji' do
  #     expect(person_name.identity_details.where(name: 'given name').first.value).to eq 'Shinji'
  #   end

  #   it 'family name is KOBAYASHI' do
  #     expect(person_name.identity_details.where(name: 'family name').first.value).to eq 'KOBAYASHI'
  #   end
  # end

  # it 'sex is male' do
  #   expect(mml_patient.sex).to eq 'male'
  # end

  # it 'birthday is 1990-01-01' do
  #   expect(mml_patient.birthday).to eq Date.parse('1990-01-01')
  # end

  # it 'natilality is Japan' do
  #   expect(mml_patient.nationality).to eq 'Japan'
  # end

  # it 'marital is no' do
  #   expect(mml_patient.marital).to eq 'no'
  # end

  # context 'Contacts' do
  #   it 'has two contacts' do
  #     expect(mml_patient.contacts).to have(2).items
  #   end

  #   it 'has 2 postal addresses' do
  #     expect(mml_patient.postal_addresses).to have(2).items
  #   end

  #   it 'has 1 phone' do
  #     expect(mml_patient.phones).to have(1).item
  #   end
  # end
end
