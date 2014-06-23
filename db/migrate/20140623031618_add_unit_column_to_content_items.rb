class AddUnitColumnToContentItems < ActiveRecord::Migration
  def change
    add_column :content_items, :unit, :text
  end
end
