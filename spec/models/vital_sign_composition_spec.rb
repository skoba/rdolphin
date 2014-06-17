RSpec.describe VitalSignComposition, :type => :model do
  it {is_expected.to belong_to :ehr}

  it 'is valid' do
    expect(build :vital_sign_composition).to be_valid
  end
  
  it 'is not valid with empty ehr_id' do
    expect(build :vital_sign_composition, ehr_id: nil).to have(1).error_on(:ehr_id)
  end

  it 'is not valid with empty uid' do
    expect(build :vital_sign_composition, uid: nil).to have(1).error_on(:uid)
  end

  it 'is not valid with duplicated uid' do
    vital_composition = create :vital_sign_composition
    expect(build :vital_sign_composition, uid: vital_composition.uid).to have(1).error_on(:uid)
  end

  describe 'attributes' do
    let (:vital_sign_composition) { create :vital_sign_composition }

    it 'archetype_id is openEHR-EHR-COMPOSITION-report-vital_sign.v1' do
      expect(vital_sign_composition.archetype_id).to eq 'openEHR-EHR-COMPOSITION-report-vital_sign.v1'
    end

    it 'systolic_blood_pressure is 120' do
      expect(vital_sign_composition.systolic_blood_pressure).to eq 120
    end
  end
end
