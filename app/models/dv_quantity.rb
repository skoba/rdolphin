class DvQuantity < DataValue
  alias_attribute :value, :decimal_value

  validates :decimal_value, presence: true
  validates :value, presence: true
end
