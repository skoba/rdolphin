class AlterIdentifierReferenceToAddresses < ActiveRecord::Migration
  def change
    add_reference :addresses, :party, polymorphic:true, index:true
    remove_reference :addresses, :person    
  end
end
