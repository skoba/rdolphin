FactoryGirl.define do
  factory :composition do
    #    ehr nil
    #association :category, factory: :persistent

    name 'Test spec'
    nodeid 'at0000'
    uid '0000-1111-2222-3333'
    archetypeid 'openEHR-EHR-COMPOSITION.test.v1'
    templateid 'Test specs'
    rm_version '1.0.2'
    # after(:create) do |composition|
    #   create :persistent, composition: composition
    # end
  end

  factory :lab_test, class: Composition do
#    category :persistent # "persistent"
    name 'Lab test report'
    nodeid 'at0000'
    uid '1111-2222-3333-4444'
    archetypeid 'openEHR-EHR-COMPOSITION.report-lab_test.v1'
    templateid 'MML Lab Test'
    rm_version '1.0.2'
  end

  factory :prescription, class: Composition do
#    category :persistent # "persistent"
    name 'Prescription'
    nodeid 'at0000'
    uid '1111-2222-3333-4444'
    archetypeid 'openEHR-EHR-COMPOSITION.prescription.v1'
    templateid 'Prescription'
    rm_version '1.0.2'    
  end
end
