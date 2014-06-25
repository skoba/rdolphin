class Party < ActiveRecord::Base
  has_many :identifiers
  has_many :addresses
  has_many :telecoms
  has_many :ehrs
end
