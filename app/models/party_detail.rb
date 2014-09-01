class PartyDetail < ActiveRecord::Base
  belongs_to :party
  has_many :detail_items
end
