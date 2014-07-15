class RemoveReferenceToItemStructures < ActiveRecord::Migration
  def change
    remove_reference :item_structures, :value, index: true
  end
end
