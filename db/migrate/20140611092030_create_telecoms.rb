class CreateTelecoms < ActiveRecord::Migration
  def change
    create_table :telecoms do |t|
      t.string :telecom_type, null: false
      t.string :unstructured
      t.string :country_code
      t.string :area_code
      t.string :number
      t.string :extension
      t.string :email_address

      t.timestamps
    end
  end
end
