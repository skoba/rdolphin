class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :lifecycle_state
      t.references :ehr, index: true
      t.string :uid

      t.timestamps
    end
  end
end
