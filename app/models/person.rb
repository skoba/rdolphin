class Person < Party
  has_many :addresses, as: :party
  has_many :identifiers, as: :party
  has_many :telecoms, as: :party
  has_one :ehr
  has_many :compositions, through: :ehr
  paginates_per 25

  validates_presence_of :family_name, :given_name, :date_of_birth, :gender
end
