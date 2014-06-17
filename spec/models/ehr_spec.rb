RSpec.describe Ehr, :type => :model do
  it { is_expected.to belong_to :person }
  it { is_expected.to have_many :compositions }
  
  it 'is unique on ehr_id' do
    ehr = create :ehr
    expect(Ehr.new(ehr_id: ehr.ehr_id)).to have(1).error_on(:ehr_id)
  end

  it 'is invalid without ehr_id' do
    expect(build :ehr, ehr_id: nil).to have(1).error_on(:ehr_id)
  end

end
