FactoryGirl.define do
  factory :item do
    name "Test item"
    type "Item"
    archetypeid "openEHR-EHR-ITEM_STRUCTURE.test.v1"
    nodeid "at0001"
    path "/data/item[at0001]"
  end

  factory :element do
    name 'Leaf element'
    type 'Element'
    archetypeid 'openEHR-EHR-ELEMENT.test.v1'
    nodeid 'at0001'
    path '/data/item[at00001]/value'
    # after(:create) do |element|
    #   element.data_value = create(:data_value)
    # end
  end

  factory :sub_cluster do
    name 'Sub Cluster'
    type 'Cluster'
    archetypeid 'openEHR-EHR-CLUSTER.test.v1'
    nodeid 'at0003'
    path '/data/item[at0003]/item'
  end

  factory :sub_element1 do
    name 'Sub element'
    type 'Element'
    archetypeid 'openEHR-EHR-CLUSTER.test.v1'
    nodeid 'at0003'
    path '/data/item/at[at0003]/item/value'
    after(:create) do |element|
      element.data_value = create(:dv_text)
    end
  end
  
  factory :cluster do
    name 'Cluster tree'
    type 'Cluster'
    archetypeid 'openEHR-EHR-CLUSTER.test.v1'
    nodeid 'at0002'
    path '/data/item[at0003]'
    after(:create) do |cluster|
      cluster.items << create(:sub_element1)
      cluster.items << create(:sub_cluster)
    end
  end
end
