class CreateVersionLifecycleStates < ActiveRecord::Migration
  def change
    create_table :version_lifecycle_states do |t|
      t.integer :conceptid, index: true
      t.string :rubric
      t.references :language, index: true

      t.timestamps
    end
  end
end
