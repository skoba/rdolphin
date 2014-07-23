class ContentItem < ActiveRecord::Base
  belongs_to :composition
  belongs_to :item, polymorphic: true
  has_many :items
  has_many :item_structures

  validates_presence_of :rm_type_name, :archetype_id, :path
end
