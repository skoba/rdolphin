class CreateIdentityDetails < ActiveRecord::Migration
  def change
    create_table :identity_details do |t|
      t.string :name
      t.string :value
      t.references :party_identity, polymorphic: true
      
      t.timestamps
    end
  end
end

class AddIndexToIdentityDeatils < ActiveRecord::Migration
  def change
    add_index :identity_details, :party_identity
  end
end
