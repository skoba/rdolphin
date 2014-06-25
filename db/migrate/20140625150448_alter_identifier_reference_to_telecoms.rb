class AlterIdentifierReferenceToTelecoms < ActiveRecord::Migration
  def change
    add_reference :telecoms, :party, polymorphic:true, index:true
    remove_reference :telecoms, :person    
  end
end
