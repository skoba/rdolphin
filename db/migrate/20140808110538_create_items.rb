class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :item_structure, index: true
      t.references :cluster, index: true

      t.timestamps
    end
  end
end
