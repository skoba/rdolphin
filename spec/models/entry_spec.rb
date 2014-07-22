RSpec.describe Entry, :type => :model do
  it {is_expected.to belong_to :composition}
  it {is_expected.to belong_to :item}

  it 'is not valid without rm_type_name' do
    expect(build :entry, rm_type_name: nil).to have(1).error_on(:rm_type_name)
  end

  it 'is not valid without archetype_id' do
    expect(build :entry, archetype_id: '').to have(1).error_on(:archetype_id)
  end

  it 'is not valid without path' do
    expect(build :entry, path: nil).to have(1).error_on(:path)
  end
end
