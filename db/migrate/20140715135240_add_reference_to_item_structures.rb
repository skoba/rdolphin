class AddReferenceToItemStructures < ActiveRecord::Migration
  def change
    add_reference :item_structures, :value, index: true
  end
end
