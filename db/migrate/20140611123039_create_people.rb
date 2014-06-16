class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :family_name, null: false
      t.string :given_name, null: false
      t.string :middle_nale
      t.string :unstructured_name
      t.date :date_of_birth, null: false
      t.string :gender, null: false
      t.string :prefix

      t.timestamps
    end
  end
end
