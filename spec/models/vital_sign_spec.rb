RSpec.describe VitalSign, :type => :model do
  it {is_expected.to belong_to :ehr}

  it 'is valid' do
    expect(build :vital_sign).to be_valid
  end
  
  it 'is not valid with empty ehr_id' do
    expect(build :vital_sign, ehr_id: nil).to have(1).error_on(:ehr_id)
  end

  it 'is not valid with empty uid' do
    expect(build :vital_sign, uid: nil).to have(1).error_on(:uid)
  end

  it 'is not valid with duplicated uid' do
    vital_sign = create :vital_sign
    expect(build :vital_sign, uid: vital_sign.uid).to have(1).error_on(:uid)
  end

  describe 'attributes' do
    let (:vital_sign) { create :vital_sign }

    it 'archetype_id is openEHR-EHR-COMPOSITION-report-vital_sign.v1' do
      expect(vital_sign.archetype_id).to eq 'openEHR-EHR-COMPOSITION-report-vital_sign.v1'
    end

    it 'systolic_blood_pressure is 120' do
      expect(vital_sign.systolic_blood_pressure).to eq 120
    end
  end
end
