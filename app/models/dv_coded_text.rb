class DvCodedText < DataValue
  validates :code, presence: true

  alias_attribute :value, :text_value
end
