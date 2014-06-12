class AddIndexToUidOnCompositions < ActiveRecord::Migration
  def change
    add_index :compositions, :uid, unique: true
  end
end
