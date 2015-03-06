class Composition < Component
#  belongs_to :ehr
  has_many :content_items

  def partial
    "#{name.downcase.tr(' ', '_')}"
  end
end
