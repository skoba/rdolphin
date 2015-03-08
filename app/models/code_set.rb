class CodeSet < ActiveRecord::Base
  belongs_to :language, polymorphic: true
end
