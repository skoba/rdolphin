class CreateContentItems < ActiveRecord::Migration
  def change
    create_table :content_items do |t|
      t.string :name
      t.string :archetypeid
      t.string :rm_type
      t.string :nodeid
      t.string :path
      t.references :composition, index: true
      t.references :content_item, index: true, polymorphic: true

      t.timestamps
    end
  end
end
