class AddReferenceToItemStructure < ActiveRecord::Migration
  def change
    add_reference :item_structures, :content_item, index: true, polymorphic: true
  end
end
