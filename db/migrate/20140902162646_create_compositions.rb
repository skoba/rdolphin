class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.string :category
      t.string :name
      t.string :nodeid
      t.string :uid
      t.string :archetypeid
      t.string :templateid
      t.string :rm_version
      t.references :ehr, index: true

      t.timestamps
    end
  end
end
