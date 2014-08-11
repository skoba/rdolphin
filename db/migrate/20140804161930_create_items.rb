class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.string :archetypeid
      t.string :nodeid
      t.string :path
      t.references :item

      t.timestamps
    end
  end
end
