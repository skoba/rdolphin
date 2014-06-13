class ContentItem < ActiveRecord::Base
  belongs_to :composition

  validates :rm_type_name, presence: true
  validates :archetype_id, presence: true
end
