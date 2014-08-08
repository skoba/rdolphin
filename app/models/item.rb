class Item < ActiveRecord::Base
  belongs_to :item_structure
  belongs_to :cluster
end
