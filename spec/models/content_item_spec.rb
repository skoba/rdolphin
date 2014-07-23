RSpec.describe ContentItem, :type => :model do
  it {is_expected.to belong_to :composition}
  it {is_expected.to have_many :item_structures}

  it 'is not valid without rm_type_name' do
    expect(build :content_item, rm_type_name: nil).to have(1).error_on(:rm_type_name)
  end

  it 'is not valid without archetype_id' do
    expect(build :content_item, archetype_id: '').to have(1).error_on(:archetype_id)
  end

  it 'is not valid without path' do
    expect(build :content_item, path: nil).to have(1).error_on(:path)
  end
end
