class CreateItemProxies < ActiveRecord::Migration
  def change
    create_table :item_proxies do |t|
      t.references :item, index: true, polymorphic: true

      t.timestamps null: false
    end
  end
end
