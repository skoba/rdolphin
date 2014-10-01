RSpec.describe Entry, :type => :model do
  it {is_expected.to belong_to :content_item}
  it {is_expected.to have_many :items}
end
