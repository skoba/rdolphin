class Language < ActiveRecord::Base
  belongs_to :version_lifecycle_state

  validates :code, presence: true
  validates :description, presence: true
end
