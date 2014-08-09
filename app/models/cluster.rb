class Cluster < ItemStructure
  has_many :clusters, through: :items
  has_many :elements, through: :items
end
