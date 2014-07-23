RSpec.describe Section, :type => :model do
  it {is_expected.to belong_to :composition}
  it {is_expected.to belong_to :item}
  it {is_expected.to have_many :content_items}
  it {is_expected.to have_many :item_structures}
end
