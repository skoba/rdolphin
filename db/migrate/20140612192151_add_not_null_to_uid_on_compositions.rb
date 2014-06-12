class AddNotNullToUidOnCompositions < ActiveRecord::Migration
  def change
    change_column :compositions, :uid, :string, null: false
  end
end
