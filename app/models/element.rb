class Element < Item
  belongs_to :item
  has_one :data_value
end
