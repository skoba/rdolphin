class Address < ActiveRecord::Base
  belongs_to :party, polymorphic: true
  validates :address_type, presence: true
end
