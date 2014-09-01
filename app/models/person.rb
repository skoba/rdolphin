class Person < Party
  has_many :party_identities, as: :party
end
