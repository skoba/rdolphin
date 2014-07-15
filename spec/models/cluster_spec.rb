RSpec.describe Cluster, :type => :model do
  subject {create :cluster}

  it {is_expected.to belong_to :item}
  it {is_expected.to have_many :item_structures}
end
