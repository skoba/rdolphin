RSpec.describe Composition, :type =>:model do
  it {is_expected.to belong_to :ehr}
  it {is_expected.to have_many :content_items}

  it {is_expected.to respond_to :name}
  it {is_expected.to respond_to :uid}
  it {is_expected.to respond_to :category}
  
  it 'is not valid with empty ehr_id' do
    expect(build :composition, ehr_id: nil).to have(1).error_on(:ehr_id)
  end

  it 'is not valid with empty uid' do
    expect(build :composition, uid: nil).to have(1).error_on(:uid)
  end

  it 'is not valid with duplicated uid' do
    composition = create :composition
    expect(build :composition, uid: composition.uid).to have(1).error_on(:uid)
  end
end
