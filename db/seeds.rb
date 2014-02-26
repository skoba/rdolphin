require 'factory_girl'

#Dir[Rails.root.join('spec/factories/*.rb')].each {|f| require f }

Archetype.delete_all
Rm.delete_all

FactoryGirl.create_list(:test_module, 1000_000)
