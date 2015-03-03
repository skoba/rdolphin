class CreateComponentProxies < ActiveRecord::Migration
  def change
    create_table :component_proxies do |t|
      t.references :folder, index: true

      t.timestamps null: false
    end
#    add_foreign_key :component_proxies, :folders
  end
end
