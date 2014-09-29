FactoryGirl.define do
  factory :composition do
#    ehr nil
    category "persistent"
    name 'MML Lab test report'
    nodeid 'at0000'
    uid '0000-1111-2222-3333'
    archetypeid 'openEHR-EHR-COMPOSITION.report-mml_lab_test.v1'
    templateid 'MML Lab Test'
    rm_version '1.0.2'
  end
end
