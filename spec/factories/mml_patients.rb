FactoryGirl.define do
  factory :mml_patient, class: MMLPatient do
    master_id 'abcdefg'
    other_ids 'Kyoto university hospital' => '012345'
    first_name 'Shinji'
    family_name 'KOBAYASHI'
    birthday '1970-04-19'
    sex 'male'
    nationality 'Japan'
    marital 'yes'
    phones('area' => '075', 'city' => '123', 'number' => 4567)
  end
end
