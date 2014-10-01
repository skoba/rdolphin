class Item < ActiveRecord::Base
  belongs_to :content_item, polymorphic: true
  belongs_to :item , polymorphic: true
  has_one :data_value
end
