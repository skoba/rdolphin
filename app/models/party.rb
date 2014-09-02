class Party < ActiveRecord::Base
  has_many :party_identities
  has_many :identity_details, through: :perty_identities
  has_many :contacts
  has_many :addresses, through: :contacts
  has_many :party_details
end
