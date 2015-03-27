class Composition < Component
  has_many :content_items
  belongs_to :category

  def partial
    "#{name.downcase.tr(' ', '_')}"
  end
end
