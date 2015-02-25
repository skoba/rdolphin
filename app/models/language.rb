class Language < ActiveRecord::Base
  validates :code, presence: true
  validates :description, presence: true
end
