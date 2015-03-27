class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.references :component_proxy, index: true
      t.integer :version_number
      t.references :version_lifecycle_status, index: true
      t.string :templateid
      t.string :uid
      t.references :language, index: true
      t.references :ehr, index: true
      t.references :party_proxy, index: true
      t.references :category, index: true
      t.string :uid, index: true
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.references :setting, index: true
      t.string :nodeid
      t.string :rm_version
      t.string :archetypeid

      t.timestamps null: false
    end
#    add_foreign_key :components, :component_proxies
#    add_foreign_key :components, :version_lifecycle_statuses
#    add_foreign_key :components, :languages
    add_foreign_key :components, :ehrs
#    add_foreign_key :components, :party_proxies
  end
end
