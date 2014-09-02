class CreateContentItems < ActiveRecord::Migration
  def change
    create_table :content_items do |t|
      t.references :composition, index: true
      t.string :name
      t.string :node
      t.string :path
      t.string :rm_type

      t.timestamps
    end
  end
end
