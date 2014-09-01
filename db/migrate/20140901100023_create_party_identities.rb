class CreatePartyIdentities < ActiveRecord::Migration
  def change
    create_table :party_identities do |t|
      t.string :name
      t.string :purpose
      t.references :party, index: true, polymorphic: true

      t.timestamps
    end
  end
end
