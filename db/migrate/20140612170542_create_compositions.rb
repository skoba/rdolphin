class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.references :ehr, index: true
      t.string :uid, null: false
      t.string :category, null: false
      t.datetime :start_time
      t.string :archetype_id

      t.timestamps
    end
  end
end
