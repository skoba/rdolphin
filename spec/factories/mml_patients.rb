require 'mml'

FactoryGirl.define do
  factory :mml_patient, class: MMLPatient do
    master_id MML::Id.new(value: 'abcdefg', type: 'facility')
    other_ids ['Kyoto university hospital' => '012345']
    # name [MML::Name.new(family: "KOBAYASHI", given: "Shinji")]
    # birthday '1970-04-19'
    # sex 'male'
    # nationality 'Japan'
    # marital 'yes'
    # phones('work' => {'area' => '075', 'city' => '123', 'number' => '4567'})
    # postal_addresses('HOME' => {'prefecture' => 'Kyotofu', 'city' => 'Kyoto', 'town' => 'Chudo-ji', 'home number' => '91', 'zip' => '600-8815'})
    after(:create) {|patient| create :dolphin_ehr, person: patient}
  end

  factory :dolphin_ehr, class: Ehr do
    system_id 'rDolphin'
    after(:create) do |ehr|
      create :lab_test_composition, ehr: ehr
    end
  end

  factory :lab_test_composition, class: Composition do
    category 'persistent'
    name 'Laboratory Test'
    archetypeid 'openEHR-EHR-COMPOSITION.report-mml_labtest.v1'
    templateid 'MML Lab Test'
    nodeid 'at0000'
    uid {SecureRandom.uuid}
  end
end


