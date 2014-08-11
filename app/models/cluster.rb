class Cluster < Item
  belongs_to :item
  has_many :items
end
