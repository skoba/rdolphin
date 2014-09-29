require 'rails_helper'

RSpec.describe Composition, :type => :model do
  subject { build :composition }

  it {is_expected.to be_valid}
  it {is_expected.to belong_to :ehr}
  it {is_expected.to have_many :content_items}

  let (:composition) {build :composition}

  specify 'category is persisitent' do
    expect(composition.category).to eq 'persistent'
  end

  specify 'name is MML Labo test report' do
    expect(composition.name).to eq 'MML Lab test report'
  end

  specify 'nodeid is at0000' do
    expect(composition.nodeid).to eq 'at0000'
  end

  specify 'uid is assigned by client' do
    expect(composition.uid).to eq '0000-1111-2222-3333'
  end

  specify 'archetypeid is penEHR-EHR-COMPOSITION.report-mml_lab_test.v1' do
    expect(composition.archetypeid).to eq 'openEHR-EHR-COMPOSITION.report-mml_lab_test.v1'
  end

  specify 'templeteid is MML Lab Test' do
    expect(composition.templateid).to eq 'MML Lab Test'
  end

  specify 'rm version is 1.0.2' do
    expect(composition.rm_version).to eq '1.0.2'
  end
end
