class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :purpose
      t.date :valid_from
      t.date :valid_to
      t.references :party, index: true, polymorphic: true

      t.timestamps
    end
  end
end
