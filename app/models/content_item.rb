class ContentItem < ActiveRecord::Base
  belongs_to :composition
  has_many :items
  belongs_to :item, polymorphic: true

  validates_presence_of :rm_type_name, :archetype_id, :path
end
