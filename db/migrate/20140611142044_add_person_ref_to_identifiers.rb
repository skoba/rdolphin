class AddPersonRefToIdentifiers < ActiveRecord::Migration
  def change
    add_reference :identifiers, :person, index: true
  end
end
