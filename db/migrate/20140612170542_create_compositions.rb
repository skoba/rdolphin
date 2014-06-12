class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.references :ehr, index: true
      t.string :uid
      t.string :category
      t.datetime :startTime
      t.string :archetype_id

      t.timestamps
    end
  end
end
