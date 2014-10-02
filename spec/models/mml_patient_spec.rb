require 'rails_helper'

RSpec.describe MMLPatient, :type => :model do
  let(:mml_patient) { create :mml_patient }

  context 'unique info' do
    it 'master_id is abcdefg' do
      expect(mml_patient.master_id).to eq 'abcdefg'
    end
  end

  context 'other ids' do
    it 'other_ids has 1 item' do
      expect(mml_patient.other_ids).to have(1).item
    end

    it 'other_ids value is 012345' do
      expect(mml_patient.other_ids[0][:id]).to eq '012345'
    end
  end

  context 'person name' do
    it 'given name is Shinji' do
      expect(mml_patient.first_name).to eq 'Shinji'
    end

    it 'family name is KOBAYASHI' do
      expect(mml_patient.family_name).to eq 'KOBAYASHI'
    end
  end

  it 'sex is male' do
    expect(mml_patient.sex).to eq 'male'
  end

  it 'birthday is 1990-01-01' do
    expect(mml_patient.birthday).to eq Date.parse('1970-04-19')
  end

  it 'natilality is Japan' do
    expect(mml_patient.nationality).to eq 'Japan'
  end

  it 'marital is no' do
    expect(mml_patient.marital).to eq 'yes'
  end

  context 'Contacts' do
    it 'has two contacts' do
      expect(mml_patient.contacts).to have(2).items
    end

    it 'has 1 postal addresses' do
      expect(mml_patient.postal_addresses).to have(1).item
    end

    it 'has 1 phone' do
      expect(mml_patient.phones).to have(1).item
    end
  end

  describe "Ehr" do
    it 'has 1 ehr' do
      expect(mml_patient).to have_one :ehr
    end
  end

  context '#to_mml' do
    let(:mml) {mml_patient.to_mml}
    subject {mml}

    it {is_expected.to be_an_instance_of MML::PatientInfo}
  end
end
