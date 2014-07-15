class DvTime < DataValue
  validates :time_value, presence: true

  alias_attribute :value, :time_value
end
