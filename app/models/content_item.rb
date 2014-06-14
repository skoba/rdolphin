class ContentItem < ActiveRecord::Base
  belongs_to :composition

  validates_presence_of :rm_type_name, :archetype_id, :path
end
