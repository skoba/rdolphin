class AddEhrIdUniquenessIndex < ActiveRecord::Migration
  def change
    add_index :ehrs, :ehr_id, unique: true
  end
end
