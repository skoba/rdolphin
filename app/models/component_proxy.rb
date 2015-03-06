class ComponentProxy < ActiveRecord::Base
  belongs_to :folder
  has_many :components
end
