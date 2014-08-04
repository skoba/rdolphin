class CreateItemStructures < ActiveRecord::Migration
  def change
    create_table :item_structures do |t|
      t.string :name
      t.string :type
      t.string :archetypeid
      t.string :nodeid
      t.string :path

      t.timestamps
    end
  end
end
