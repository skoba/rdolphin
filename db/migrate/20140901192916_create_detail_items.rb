class CreateDetailItems < ActiveRecord::Migration
  def change
    create_table :detail_items do |t|
      t.string :name
      t.string :value
      t.references :party_detail, index: true, polymorphic: true

      t.timestamps
    end
  end
end
