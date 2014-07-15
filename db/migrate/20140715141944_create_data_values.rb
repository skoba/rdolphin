class CreateDataValues < ActiveRecord::Migration
  def change
    create_table :data_values do |t|
      t.string :rm_type_name
      t.references :element, index: true
      t.string :text_value
      t.boolean :bool_value
      t.string :code
      t.float :num_value
      t.integer :int_value
      t.date :date_value
      t.time :time_value
      t.datetime :datetime_value
      t.string :code
      t.string :unit

      t.timestamps
    end
  end
end
