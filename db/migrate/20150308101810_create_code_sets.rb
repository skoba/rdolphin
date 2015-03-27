class CreateCodeSets < ActiveRecord::Migration
  def change
    create_table :code_sets do |t|
      t.integer :conceptid
      t.string :rubric
      t.references :language, index: true
      t.references :code_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :code_sets, :languages
    add_foreign_key :code_sets, :code_groups
  end
end
