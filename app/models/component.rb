class Component < ApplicationRecord
  belongs_to :version_lifecycle_status
  belongs_to :language
  belongs_to :ehr
  belongs_to :party_proxy
end
