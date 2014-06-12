class AddNotNullToEhrId < ActiveRecord::Migration
  def change
    change_column :ehrs, :ehr_id, :string, null: false
  end
end
