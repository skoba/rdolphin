class Address < ActiveRecord::Base
  belongs_to :person
  validates :address_type, presence: true
end
