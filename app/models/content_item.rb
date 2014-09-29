class ContentItem < ActiveRecord::Base
  belongs_to :composition
  belongs_to :content_item, polymorphic: true
  has_many :items
end
