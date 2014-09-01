class CreateAddressDetails < ActiveRecord::Migration
  def change
    create_table :address_details do |t|
      t.string :name
      t.string :value
      t.references :address

      t.timestamps
    end
  end
end
