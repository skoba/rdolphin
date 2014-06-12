class Ehr < ActiveRecord::Base
  belongs_to :person
  has_many :compositions

  validates :ehr_id, uniqueness: true, presence: true
end
