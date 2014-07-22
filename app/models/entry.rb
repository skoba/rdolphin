class Entry < ContentItem
  belongs_to :item, polymorphic: true
end
