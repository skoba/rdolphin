class Contact < ActiveRecord::Base
  belongs_to :party, polymorphic: true
  has_many :addresses
end
