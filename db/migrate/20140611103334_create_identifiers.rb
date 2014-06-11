class CreateIdentifiers < ActiveRecord::Migration
  def change
    create_table :identifiers do |t|
      t.string :issuer, null: false
      t.string :identity, null: false

      t.timestamps
    end
  end
end
