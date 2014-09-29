class Ehr < ActiveRecord::Base
  belongs_to :person
  has_many :versions
  has_many :compositions
end
