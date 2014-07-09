class CreateContentItems < ActiveRecord::Migration
  def change
    create_table :content_items do |t|
      t.references :composition, index: true
      t.string :rm_type_name, null: false, index: true
      t.string :archetype_id, null: false, index: true
      t.string :name
      t.text :path, null: false
      t.string :node_id
      t.string :txt_data
      t.float :num_value
      t.integer :int_value
      t.boolean :bool_value
      t.datetime :datetime_value
      t.date :date_value
      t.time :time_value

      t.timestamps
    end
  end
end
