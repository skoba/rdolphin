class CreateEhrs < ActiveRecord::Migration
  def change
    create_table :ehrs do |t|
      t.references :party, index: true, polymorphic: true
      t.string :system_id

      t.timestamps
    end
  end
end
