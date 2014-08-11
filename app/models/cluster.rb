class Cluster < Item
  has_many :items, as: :item
end
