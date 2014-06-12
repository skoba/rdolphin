class Person < ActiveRecord::Base
  has_many :addresses
  has_many :identifiers
  has_many :telecoms
  has_many :ehrs

  validates_presence_of :first_name, :given_name, :date_of_birth, :gender
end
