class Identifier < ActiveRecord::Base
  belongs_to :person

  validates :issuer, presence: true
  validates :identity, presence: true
end
