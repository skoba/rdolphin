class AlterIdentifierReferenceToParty < ActiveRecord::Migration
  def change
    add_reference :identifiers, :party, polymorphic:true, index:true
    remove_reference :identifiers, :person
  end
end
