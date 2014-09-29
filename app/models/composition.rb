class Composition < ActiveRecord::Base
  belongs_to :ehr
  has_many :content_items

  def partial
    "#{self.name.downcase.tr(' ', '_')}"
  end
end
