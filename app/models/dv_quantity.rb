class DvQuantity < DataValue
  validates :num_value, presence: true

  alias_attribute :magnitude, :num_value
end
