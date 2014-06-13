RSpec.describe ContentItem, :type => :model do
  it {is_expected.to belong_to :composition}

  let(:content_item) { build :content_item }

  it 'is valid with built option' do
    expect(content_item).to be_valid
  end

  it 'is not valid without rm_type_name' do
    content_item.rm_type_name = nil
    expect(content_item).to have(1).error_on(:rm_type_name)
  end

  it 'is not valid without archetype_id' do
    content_item.archetype_id = ''
    expect(content_item).to have(1).error_on(:archetype_id)
  end
end
