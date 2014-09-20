class CreateDataValues < ActiveRecord::Migration
  def change
    create_table :data_values do |t|
      t.boolean :bool_value
      t.string :text_value
      t.integer :int_value
      t.float :real_value
      t.decimal :decimal_value
      t.string :unit
      t.date :date_value
      t.datetime :date_time_value
      t.string :code
      t.references :element, index: true

      t.timestamps
    end
  end
end
