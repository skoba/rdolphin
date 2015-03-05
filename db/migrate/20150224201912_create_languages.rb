class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :code, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
