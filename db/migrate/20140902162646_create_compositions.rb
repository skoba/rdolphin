class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.references :ehr, index: true
      t.string :category

      t.timestamps
    end
  end
end
