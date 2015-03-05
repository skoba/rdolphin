class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :rm_type
      t.string :archetypeid
      t.string :nodeid
      t.string :path
      t.references :entry, polymorphic: true, index: true
      t.references :item_proxy, index: true

      t.timestamps
    end
  end
end
