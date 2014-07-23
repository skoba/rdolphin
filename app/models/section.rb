class Section < ContentItem
  has_many :content_items, as: :item
end
