class AddReferenceToContentItems < ActiveRecord::Migration
  def change
    add_reference :content_items, :item, index: true, polymorphic: true
  end
end
