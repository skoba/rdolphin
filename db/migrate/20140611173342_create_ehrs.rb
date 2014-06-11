class CreateEhrs < ActiveRecord::Migration
  def change
    create_table :ehrs do |t|
      t.string :ehr_id
      t.boolean :queryable
      t.boolean :modifiable
      t.references :person, index: true

      t.timestamps
    end
  end
end
