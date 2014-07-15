class DvDateTime < DataValue
  validates :datetime_value, presence: true

  alias_attribute :value, :datetime_value
end
