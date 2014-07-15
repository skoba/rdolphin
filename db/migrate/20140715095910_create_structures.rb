class CreateStructures < ActiveRecord::Migration
  def change
    create_table :item_structures do |t|
      t.string :name
      t.string :archetype_id
      t.text :path
      t.string :rm_type_name
      t.references :item, index: true, polymorphic: true

      t.timestamps
    end
  end
end
