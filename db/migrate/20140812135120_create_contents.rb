class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :archetypeid
      t.string :nodeid
      t.string :path
      t.references :content, index: true

      t.timestamps
    end
  end
end
