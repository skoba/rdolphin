class Address < ActiveRecord::Base
  belongs_to :contact
  has_many :address_details
end
