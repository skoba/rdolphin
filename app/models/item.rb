class Item < ActiveRecord::Base
  belongs_to :content_item, polymorphic: true
  belongs_to :item_proxy
end
