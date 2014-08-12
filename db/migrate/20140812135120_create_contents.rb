class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :archetypeid
      t.string :nodeid
      t.string :path
      t.references :content, index: true
      t.string :name

      t.timestamps
    end
  end
end
