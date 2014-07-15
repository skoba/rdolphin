class Cluster < ItemStructure
  has_many :item_structures, as: :item
end
