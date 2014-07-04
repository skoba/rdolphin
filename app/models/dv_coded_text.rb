class DvCodedText < ContentItem
  validates :code, presence: true

  alias_attribute :value, :txt_value
end
