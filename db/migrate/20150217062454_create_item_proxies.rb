class CreateItemProxies < ActiveRecord::Migration
  def change
    create_table :item_proxies do |t|
      t.references :item, index: true, polymorphic: true

      t.timestamps null: false
    end
    add_foreign_key :item_proxies, :items
  end
end
