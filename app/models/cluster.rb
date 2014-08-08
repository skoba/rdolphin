class Cluster < ItemStructure
  has_many :items
  has_many :elements, through: :items
end
