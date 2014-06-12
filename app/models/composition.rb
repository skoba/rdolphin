class Composition < ActiveRecord::Base
  belongs_to :ehr
  has_many :content_items

  validates :ehr_id, presence: true
  validates :uid, presence: true, uniqueness: true
end
