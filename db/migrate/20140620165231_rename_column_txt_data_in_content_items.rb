class RenameColumnTxtDataInContentItems < ActiveRecord::Migration
  def change
    rename_column :content_items, :txt_data, :txt_value
  end
end
