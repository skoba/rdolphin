class CreateCodeGroups < ActiveRecord::Migration
  def change
    create_table :code_groups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
