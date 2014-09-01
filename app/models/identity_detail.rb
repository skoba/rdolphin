class IdentityDetail < ActiveRecord::Base
  belongs_to :party_identity, polymorphic: true
end
