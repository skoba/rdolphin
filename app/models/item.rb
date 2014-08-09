class Item < ActiveRecord::Base
  belongs_to :cluster
  belongs_to :item_structures
  has_many :item_structures
end
