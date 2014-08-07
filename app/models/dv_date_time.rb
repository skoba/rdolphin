class DvDateTime < DataValue
  alias_attribute :value, :date_time_value

  validates :date_time_value, presence: true
end
