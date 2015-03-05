class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.references :component_proxy, index: true
      t.integer :version_number
      t.references :version_lifecycle_status, index: true
      t.references :language, index: true
      t.references :ehr, index: true
      t.references :party_proxy, index: true

      t.timestamps null: false
    end
#    add_foreign_key :components, :component_proxies
#    add_foreign_key :components, :version_lifecycle_statuses
#    add_foreign_key :components, :languages
    add_foreign_key :components, :ehrs
#    add_foreign_key :components, :party_proxies
  end
end
