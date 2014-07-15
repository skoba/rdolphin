class DvDate < DataValue
  validates :date_value, presence: true

  alias_attribute :value, :date_value
end
