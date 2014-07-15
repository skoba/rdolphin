class DataValue < ActiveRecord::Base
  attr_reader :value
  belongs_to :element
end
