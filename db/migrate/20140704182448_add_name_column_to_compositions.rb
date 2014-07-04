class AddNameColumnToCompositions < ActiveRecord::Migration
  def change
    add_column :compositions, :name, :string
  end
end
