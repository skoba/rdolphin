RSpec.describe Cluster, :type => :model do
  let(:cluster) { Cluster.new }
  subject {cluster}

  it {is_expected.to belong_to :item}
  it {is_expected.to have_many :item_structures}
end
