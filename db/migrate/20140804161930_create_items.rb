class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
#      t.string :type
      t.string :archetypeid
      t.string :nodeid
      t.string :path
      t.references :item, polymorphic: true
      t.references :content_item, polymorphic: true

      t.timestamps
    end
  end
end
