FactoryGirl.define do
  factory :medicaion_order1, class: DvText do
    name 'medicine'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[at0003]'
    txt_value 'medicine'
    rm_type_name 'DV_TEXT'
    node_id 'at0003'
    archetype_id 'openEHR-EHR-INSTRUCTION.medication_order.v1'
  end

  factory :ingredient_name1, class: DvText do
    name 'Name'
    txt_value 'PL granule'
    rm_type_name 'DV_TEXT'
    archetype_id 'openEHR-EHR-CLUSTER.medication_ingredients.v1'
    node_id 'at0002'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[openEHR-EHR-CLUSTER.medication_ingrendients.v1]/items[at0001][1]/items[at0002]'
  end

  factory :ingredient_form1, class: DvText do
    name 'Form'
    txt_value 'powder'
    rm_type_name 'DV_TEXT'
    archetype_id 'openEHR-EHR-CLUSTER.medication_ingredients.v1'
    node_id 'at0010'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[openEHR-EHR-CLUSTER.medication_ingrendients.v1]/items[at0001][1]/items[at0010]'
  end

  factory :ingredient_amount1, class: DvQuantity do
    name 'Amount'
    magnitude '3.0'
    rm_type_name 'DV_QUANTITY'
    archetype_id 'openEHR-EHR-CLUSTER.medication_amount.v1'
    node_id 'at0001'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[openEHR-EHR-CLUSTER.medication_ingrendients.v1]/items[at0001][1]/items[openEHR-EHR-CLUSTER.medication_amount.v1]/items[at0001]'
  end

  factory :ingredient_dose_unit1, class: DvText do
    name 'Dose unit'
    txt_value 'g'
    rm_type_name 'DV_TEXT'
    archetype_id 'openEHR-EHR-CLUSTER.medication_amount.v1'
    node_id 'at0002'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[openEHR-EHR-CLUSTER.medication_ingrendients.v1]/items[at0001][1]/items[openEHR-EHR-CLUSTER.medication_amount.v1]/items[at0002]'
  end

  factory :ingredient_name2, class: DvText do
    name 'Name'
    txt_value 'Transamin'
    rm_type_name 'DV_TEXT'
    archetype_id 'openEHR-EHR-CLUSTER.medication_ingredients.v1'
    node_id 'at0002'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[openEHR-EHR-CLUSTER.medication_ingrendients.v1]/items[at0001][2]/items[at0002]'
  end

  factory :ingredient_form2, class: DvText do
    name 'Form'
    txt_value 'capsule'
    rm_type_name 'DV_TEXT'
    archetype_id 'openEHR-EHR-CLUSTER.medication_ingredients.v1'
    node_id 'at0010'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[openEHR-EHR-CLUSTER.medication_ingrendients.v1]/items[at0001][2]/items[at0010]'
  end

  factory :ingredient_amount2, class: DvQuantity do
    name 'Amount'
    magnitude '3'
    rm_type_name 'DV_QUANTITY'
    archetype_id 'openEHR-EHR-CLUSTER.medication_amount.v1'
    node_id 'at0001'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[openEHR-EHR-CLUSTER.medication_ingrendients.v1]/items[at0001][2]/items[openEHR-EHR-CLUSTER.medication_amount.v1]/items[at0001]'
  end

  factory :ingredient_dose_unit2, class: DvText do
    name 'Dose unit'
    txt_value 'C'
    rm_type_name 'DV_TEXT'
    archetype_id 'openEHR-EHR-CLUSTER.medication_amount.v1'
    node_id 'at0002'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[openEHR-EHR-CLUSTER.medication_ingrendients.v1]/items[at0001][2]/items[openEHR-EHR-CLUSTER.medication_amount.v1]/items[at0002]'
  end

  factory :medicaion_timing1, class: DvText do
    name 'Timing description'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[at0010]/item[at0012]'
    txt_value 't.i.d, 7days'
    rm_type_name 'DV_TEXT'
    node_id 'at0003'
    archetype_id 'openEHR-EHR-INSTRUCTION.medication_order.v1'
  end

  factory :medicaion_structured_timing_start, class: DvText do
    name 'Start date'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][1]/decription[at0002]/items[at0010]/item[at0012]'
    date '2014-07-01'
    rm_type_name 'DV_DATE'
    node_id 'at0003'
    archetype_id 'openEHR-EHR-INSTRUCTION.medication_order.v1'
  end

  factory :medication_order2 do
    name 'medicine'
    path '[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][2]/decription[at0002]/items[at0003]'
    txt_value 'medicine'
    rm_type_name 'DV_TEXT'
    node_id 'at0003'
    archetype_id 'openEHR-EHR-INSTRUCTION.medication_order.v1'    
  end

  factory :prescription do
    uid { SecureRandom.uuid }
    category "persistent"
    start_time { Faker::Time.date }
    ehr
    # after(:create) do |prescription|
    #   .content_items << create(:content_item)
    # end

  end
end


