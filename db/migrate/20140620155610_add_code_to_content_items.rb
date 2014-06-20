class AddCodeToContentItems < ActiveRecord::Migration
  def change
    add_column :content_items, :code, :string
  end
end
