class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :meaning
      t.string :name
      t.references :contact, index: true, polymorphic: true

      t.timestamps
    end
  end
end
