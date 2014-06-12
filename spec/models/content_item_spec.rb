RSpec.describe ContentItem, :type => :model do
  it {is_expected.to belong_to :composition}
end
