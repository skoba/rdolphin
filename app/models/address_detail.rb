class AddressDetail < ActiveRecord::Base
  belongs_to :address, polymorphic: true
end
