class Telecom < ActiveRecord::Base
  belongs_to :person

  validates :telecom_type, presence: true
end
