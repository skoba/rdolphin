class Identifier < ActiveRecord::Base
  belongs_to :party, polymorphic: true

  validates :issuer, presence: true
  validates :identity, presence: true
end
