class DvText < ContentItem
  validates :txt_value, presence: true

  alias_attribute :value, :txt_value
end
