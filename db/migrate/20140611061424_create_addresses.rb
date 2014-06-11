class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :post_code
      t.string :address_type, null: false
      t.string :unstructured
      t.string :unstructured_syllabic
      t.string :prefecture
      t.string :prefecture_code
      t.string :state
      t.string :city
      t.string :city_syllabic
      t.string :town
      t.string :town_syllabic
      t.string :property_number
      t.date :valid_from
      t.date :valid_to

      t.timestamps
    end
  end
end
