class DvDate < DataValue
  alias_attribute :value, :date_value

  validates :date_value, presence: true
end
