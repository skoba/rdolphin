class CreatePartyDetails < ActiveRecord::Migration
  def change
    create_table :party_details do |t|
      t.string :name
      t.string :purpose
      t.references :party, polymorphic: true, index: true

      t.timestamps
    end
  end
end
