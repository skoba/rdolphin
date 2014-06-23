class DvQuantity < ContentItem
  validates :num_value, presence: true

  alias_attribute :magnitude, :num_value
end
