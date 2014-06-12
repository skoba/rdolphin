class Ehr < ActiveRecord::Base
  belongs_to :person

  validates :ehr_id, uniqueness: true, presence: true
end
