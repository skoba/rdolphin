class DvBoolean < ContentItem
  validates :bool_value, inclusion: {in: [true, false]}

  alias_attribute :value, :bool_value
end