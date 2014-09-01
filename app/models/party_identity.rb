class PartyIdentity < ActiveRecord::Base
  belongs_to :party, polymorphic: true
  has_many :identity_details
end
