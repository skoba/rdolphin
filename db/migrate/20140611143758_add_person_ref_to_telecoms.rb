class AddPersonRefToTelecoms < ActiveRecord::Migration
  def change
    add_reference :telecoms, :person, index: true
  end
end
