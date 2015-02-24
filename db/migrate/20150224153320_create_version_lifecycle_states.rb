class CreateVersionLifecycleStates < ActiveRecord::Migration
  def change
    create_table :version_lifecycle_states do |t|
      t.string :rubric

      t.timestamps
    end
  end
end
