class DvText < DataValue
  validates :text_value, presence: true

  alias_attribute :value, :text_value
end
