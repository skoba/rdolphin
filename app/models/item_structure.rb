class ItemStructure < ActiveRecord::Base
  belongs_to :item, polymorphic: true
  belongs_to :content_item, polymorphic: true
end
