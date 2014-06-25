class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :type
      t.references :identifiers
      t.references :addresses
      t.references :telecoms
      t.string :family_name
      t.string :given_name
      t.string :middle_name
      t.string :unstructured_name
      t.date :date_of_birth
      t.string :gender
      t.string :prefix

      t.timestamps
    end
  end
end
