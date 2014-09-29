class ContentItem < ActiveRecord::Base
  belongs_to :composition
  has_many :items
end
