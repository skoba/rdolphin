require 'securerandom'
class OpenEhrEhrObservationMmlTestModuleV1
  include ActiveModel::Model

  def self.create(attributes = {})
    OpenEhrEhrObservationMmlTestModuleV1.new(attributes)
  end

  def self.all
    Archetype.where(archetypeid: 'openEHR-EHR-OBSERVATION.mml_test_module.v1').to_a.map do |archetype|
      OpenEhrEhrObservationMmlTestModuleV1.new(archetype: archetype)
    end
  end

  def self.find(id)
    OpenEhrEhrObservationMmlTestModuleV1.new(archetype: Archetype.find(id))
  end

  def self.build(params)
    OpenEhrEhrObservationMmlTestModuleV1.new(params)
  end
  
  def save
    archetype.rms.inject(archetype.save, :&) {|rm| rm.save}
  end

  def persisted?
    archetype.persisted?
  end

  def destroy
    archetype.destroy
  end
  
  def update(attributes)
    self.attributes=attributes
  end

  def attributes=(attributes)
    attributes.each do |k, v|
       send("#{k}=", v )
    end
  end

  def id
    archetype.id
  end

  def id=(id)
    self.archetype = Archetype.find(id)
  end

  def archetype
    @archetype ||= Archetype.new(archetypeid: 'openEHR-EHR-OBSERVATION.mml_test_module.v1', uid: SecureRandom.uuid)
  end

  def archetype=(archetype)
    @archetype = archetype
  end

  def at0002model
    @at0002 ||= confat('at0002', '/data[at0001]/events[at0002]/value')
  end

  def at0002
    at0002model.text_value
  end

  def at0002=(at0002)
    at0002model.text_value = at0002
    at0002model.save
  end

  def at0005model
    @at0005 ||= confat('at0005', '/data[at0001]/events[at0002]/data[at0003]/items[at0004]/items[at0005]/value')
  end

  def at0005
    at0005model.text_value
  end

  def at0005=(at0005)
    at0005model.text_value = at0005
    at0005model.save
  end

  def at0006model
    @at0006 ||= confat('at0006', '/data[at0001]/events[at0002]/data[at0003]/items[at0004]/items[at0006]/value')
  end

  def at0006
    at0006model.text_value
  end

  def at0006=(at0006)
    at0006model.text_value = at0006
    at0006model.save
  end

  def at0007model
    @at0007 ||= confat('at0007', '/data[at0001]/events[at0002]/data[at0003]/items[at0004]/items[at0007]/value')
  end

  def at0007
    at0007model.text_value
  end

  def at0007=(at0007)
    at0007model.text_value = at0007
    at0007model.save
  end

  def at0008model
    @at0008 ||= confat('at0008', '/data[at0001]/events[at0002]/data[at0003]/items[at0004]/items[at0008]/value')
  end

  def at0008
    at0008model.text_value
  end

  def at0008=(at0008)
    at0008model.text_value = at0008
    at0008model.save
  end

  def at0010model
    @at0010 ||= confat('at0010', '/data[at0001]/events[at0002]/data[at0003]/items[at0009]/items[at0010]/value')
  end

  def at0010
    at0010model.text_value
  end

  def at0010=(at0010)
    at0010model.text_value = at0010
    at0010model.save
  end

  def at0011model
    @at0011 ||= confat('at0011', '/data[at0001]/events[at0002]/data[at0003]/items[at0009]/items[at0011]/value')
  end

  def at0011
    at0011model.text_value
  end

  def at0011=(at0011)
    at0011model.text_value = at0011
    at0011model.save
  end

  def at0012model
    @at0012 ||= confat('at0012', '/data[at0001]/events[at0002]/data[at0003]/items[at0009]/items[at0012]/value')
  end

  def at0012
    at0012model.text_value
  end

  def at0012=(at0012)
    at0012model.text_value = at0012
    at0012model.save
  end

  def at0014model
    @at0014 ||= confat('at0014', '/data[at0001]/events[at0002]/data[at0003]/items[at0013]/items[at0014]/value')
  end

  def at0014
    at0014model.text_value
  end

  def at0014=(at0014)
    at0014model.text_value = at0014
    at0014model.save
  end

  def at0015model
    @at0015 ||= confat('at0015', '/data[at0001]/events[at0002]/data[at0003]/items[at0013]/items[at0015]/value')
  end

  def at0015
    at0015model.text_value
  end

  def at0015=(at0015)
    at0015model.text_value = at0015
    at0015model.save
  end

  def at0016model
    @at0016 ||= confat('at0016', '/data[at0001]/events[at0002]/data[at0003]/items[at0013]/items[at0016]/value')
  end

  def at0016
    at0016model.text_value
  end

  def at0016=(at0016)
    at0016model.text_value = at0016
    at0016model.save
  end

  def at0018model
    @at0018 ||= confat('at0018', '/data[at0001]/events[at0002]/data[at0003]/items[at0017]/items[at0018]/value')
  end

  def at0018
    at0018model.text_value
  end

  def at0018=(at0018)
    at0018model.text_value = at0018
    at0018model.save
  end

  def at0019model
    @at0019 ||= confat('at0019', '/data[at0001]/events[at0002]/data[at0003]/items[at0017]/items[at0019]/value')
  end

  def at0019
    at0019model.text_value
  end

  def at0019=(at0019)
    at0019model.text_value = at0019
    at0019model.save
  end

  def at0020model
    @at0020 ||= confat('at0020', '/data[at0001]/events[at0002]/data[at0003]/items[at0017]/items[at0020]/value')
  end

  def at0020
    at0020model.text_value
  end

  def at0020=(at0020)
    at0020model.text_value = at0020
    at0020model.save
  end

  def at0023model
    @at0023 ||= confat('at0023', '/data[at0001]/events[at0002]/data[at0003]/items[at0021]/items[at0023]/value')
  end

  def at0023
    at0023model.text_value
  end

  def at0023=(at0023)
    at0023model.text_value = at0023
    at0023model.save
  end

  def at0022model
    @at0022 ||= confat('at0022', '/data[at0001]/events[at0002]/data[at0003]/items[at0021]/items[at0022]/value')
  end

  def at0022
    at0022model.text_value
  end

  def at0022=(at0022)
    at0022model.text_value = at0022
    at0022model.save
  end

  def at0024model
    @at0024 ||= confat('at0024', '/data[at0001]/events[at0002]/data[at0003]/items[at0021]/items[at0024]/value')
  end

  def at0024
    at0024model.text_value
  end

  def at0024=(at0024)
    at0024model.text_value = at0024
    at0024model.save
  end

  def at0026model
    @at0026 ||= confat('at0026', '/data[at0001]/events[at0002]/data[at0003]/items[at0025]/items[at0026]/value')
  end

  def at0026
    at0026model.text_value
  end

  def at0026=(at0026)
    at0026model.text_value = at0026
    at0026model.save
  end

  def at0027model
    @at0027 ||= confat('at0027', '/data[at0001]/events[at0002]/data[at0003]/items[at0025]/items[at0027]/value')
  end

  def at0027
    at0027model.text_value
  end

  def at0027=(at0027)
    at0027model.text_value = at0027
    at0027model.save
  end

  def at0028model
    @at0028 ||= confat('at0028', '/data[at0001]/events[at0002]/data[at0003]/items[at0025]/items[at0028]/value')
  end

  def at0028
    at0028model.text_value
  end

  def at0028=(at0028)
    at0028model.text_value = at0028
    at0028model.save
  end

  def at0030model
    @at0030 ||= confat('at0030', '/data[at0001]/events[at0002]/data[at0003]/items[at0029]/items[at0030]/value')
  end

  def at0030
    at0030model.text_value
  end

  def at0030=(at0030)
    at0030model.text_value = at0030
    at0030model.save
  end

  def at0031model
    @at0031 ||= confat('at0031', '/data[at0001]/events[at0002]/data[at0003]/items[at0029]/items[at0031]/value')
  end

  def at0031
    at0031model.text_value
  end

  def at0031=(at0031)
    at0031model.text_value = at0031
    at0031model.save
  end

  def at0032model
    @at0032 ||= confat('at0032', '/data[at0001]/events[at0002]/data[at0003]/items[at0029]/items[at0032]/value')
  end

  def at0032
    at0032model.text_value
  end

  def at0032=(at0032)
    at0032model.text_value = at0032
    at0032model.save
  end

  def at0034model
    @at0034 ||= confat('at0034', '/data[at0001]/events[at0002]/data[at0003]/items[at0033]/items[at0034]/value')
  end

  def at0034
    at0034model.text_value
  end

  def at0034=(at0034)
    at0034model.text_value = at0034
    at0034model.save
  end

  def at0035model
    @at0035 ||= confat('at0035', '/data[at0001]/events[at0002]/data[at0003]/items[at0033]/items[at0035]/value')
  end

  def at0035
    at0035model.text_value
  end

  def at0035=(at0035)
    at0035model.text_value = at0035
    at0035model.save
  end

  def at0036model
    @at0036 ||= confat('at0036', '/data[at0001]/events[at0002]/data[at0003]/items[at0033]/items[at0036]/value')
  end

  def at0036
    at0036model.text_value
  end

  def at0036=(at0036)
    at0036model.text_value = at0036
    at0036model.save
  end

  def at0038model
    @at0038 ||= confat('at0038', '/data[at0001]/events[at0002]/data[at0003]/items[at0037]/items[at0038]/value')
  end

  def at0038
    at0038model.text_value
  end

  def at0038=(at0038)
    at0038model.text_value = at0038
    at0038model.save
  end

  def at0039model
    @at0039 ||= confat('at0039', '/data[at0001]/events[at0002]/data[at0003]/items[at0037]/items[at0039]/value')
  end

  def at0039
    at0039model.text_value
  end

  def at0039=(at0039)
    at0039model.text_value = at0039
    at0039model.save
  end

  def at0040model
    @at0040 ||= confat('at0040', '/data[at0001]/events[at0002]/data[at0003]/items[at0037]/items[at0040]/value')
  end

  def at0040
    at0040model.text_value
  end

  def at0040=(at0040)
    at0040model.text_value = at0040
    at0040model.save
  end

  def at0042model
    @at0042 ||= confat('at0042', '/data[at0001]/events[at0002]/data[at0003]/items[at0041]/items[at0042]/value')
  end

  def at0042
    at0042model.text_value
  end

  def at0042=(at0042)
    at0042model.text_value = at0042
    at0042model.save
  end

  def at0043model
    @at0043 ||= confat('at0043', '/data[at0001]/events[at0002]/data[at0003]/items[at0041]/items[at0043]/value')
  end

  def at0043
    at0043model.text_value
  end

  def at0043=(at0043)
    at0043model.text_value = at0043
    at0043model.save
  end

  def at0044model
    @at0044 ||= confat('at0044', '/data[at0001]/events[at0002]/data[at0003]/items[at0041]/items[at0044]/value')
  end

  def at0044
    at0044model.text_value
  end

  def at0044=(at0044)
    at0044model.text_value = at0044
    at0044model.save
  end

  def at0045model
    @at0045 ||= confat('at0045', '/data[at0001]/events[at0002]/data[at0003]/items[at0041]/items[at0045]/value')
  end

  def at0045
    at0045model.text_value
  end

  def at0045=(at0045)
    at0045model.text_value = at0045
    at0045model.save
  end

  def at0047model
    @at0047 ||= confat('at0047', '/data[at0001]/events[at0002]/data[at0003]/items[at0047]/value')
  end

  def at0047
    at0047model.text_value
  end

  def at0047=(at0047)
    at0047model.text_value = at0047
    at0047model.save
  end

  def at0051model
    @at0051 ||= confat('at0051', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0049]/items[at0051]/value')
  end

  def at0051
    at0051model.text_value
  end

  def at0051=(at0051)
    at0051model.text_value = at0051
    at0051model.save
  end

  def at0052model
    @at0052 ||= confat('at0052', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0049]/items[at0052]/value')
  end

  def at0052
    at0052model.text_value
  end

  def at0052=(at0052)
    at0052model.text_value = at0052
    at0052model.save
  end

  def at0053model
    @at0053 ||= confat('at0053', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0049]/items[at0053]/value')
  end

  def at0053
    at0053model.text_value
  end

  def at0053=(at0053)
    at0053model.text_value = at0053
    at0053model.save
  end

  def at0055model
    @at0055 ||= confat('at0055', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0049]/items[at0054]/items[at0055]/value')
  end

  def at0055
    at0055model.text_value
  end

  def at0055=(at0055)
    at0055model.text_value = at0055
    at0055model.save
  end

  def at0056model
    @at0056 ||= confat('at0056', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0049]/items[at0054]/items[at0056]/value')
  end

  def at0056
    at0056model.text_value
  end

  def at0056=(at0056)
    at0056model.text_value = at0056
    at0056model.save
  end

  def at0057model
    @at0057 ||= confat('at0057', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0049]/items[at0054]/items[at0057]/value')
  end

  def at0057
    at0057model.text_value
  end

  def at0057=(at0057)
    at0057model.text_value = at0057
    at0057model.save
  end

  def at0058model
    @at0058 ||= confat('at0058', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0049]/items[at0054]/items[at0058]/value')
  end

  def at0058
    at0058model.text_value
  end

  def at0058=(at0058)
    at0058model.text_value = at0058
    at0058model.save
  end

  def at0059model
    @at0059 ||= confat('at0059', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0049]/items[at0059]/value')
  end

  def at0059
    at0059model.text_value
  end

  def at0059=(at0059)
    at0059model.text_value = at0059
    at0059model.save
  end

  def at0061model
    @at0061 ||= confat('at0061', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0071]/items[at0061]/value')
  end

  def at0061
    at0061model.text_value
  end

  def at0061=(at0061)
    at0061model.text_value = at0061
    at0061model.save
  end

  def at0062model
    @at0062 ||= confat('at0062', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0071]/items[at0062]/value')
  end

  def at0062
    at0062model.text_value
  end

  def at0062=(at0062)
    at0062model.text_value = at0062
    at0062model.save
  end

  def at0063model
    @at0063 ||= confat('at0063', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0071]/items[at0063]/value')
  end

  def at0063
    at0063model.text_value
  end

  def at0063=(at0063)
    at0063model.text_value = at0063
    at0063model.save
  end

  def at0064model
    @at0064 ||= confat('at0064', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0071]/items[at0064]/value')
  end

  def at0064
    at0064model.text_value
  end

  def at0064=(at0064)
    at0064model.text_value = at0064
    at0064model.save
  end

  def at0065model
    @at0065 ||= confat('at0065', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0071]/items[at0065]/value')
  end

  def at0065
    at0065model.text_value
  end

  def at0065=(at0065)
    at0065model.text_value = at0065
    at0065model.save
  end

  def at0066model
    @at0066 ||= confat('at0066', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0071]/items[at0066]/value')
  end

  def at0066
    at0066model.text_value
  end

  def at0066=(at0066)
    at0066model.text_value = at0066
    at0066model.save
  end

  def at0067model
    @at0067 ||= confat('at0067', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0071]/items[at0067]/value')
  end

  def at0067
    at0067model.text_value
  end

  def at0067=(at0067)
    at0067model.text_value = at0067
    at0067model.save
  end

  def at0068model
    @at0068 ||= confat('at0068', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0071]/items[at0068]/value')
  end

  def at0068
    at0068model.text_value
  end

  def at0068=(at0068)
    at0068model.text_value = at0068
    at0068model.save
  end

  def at0069model
    @at0069 ||= confat('at0069', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0069]/value')
  end

  def at0069
    at0069model.text_value
  end

  def at0069=(at0069)
    at0069model.text_value = at0069
    at0069model.save
  end

  def at0070model
    @at0070 ||= confat('at0070', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0072]/items[at0070]/value')
  end

  def at0070
    at0070model.num_value
  end

  def at0070=(at0070)
    at0070model.num_value = at0070
    at0070model.save
  end

  def at0073model
    @at0073 ||= confat('at0073', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0072]/items[at0073]/value')
  end

  def at0073
    at0073model.num_value
  end

  def at0073=(at0073)
    at0073model.num_value = at0073
    at0073model.save
  end

  def at0074model
    @at0074 ||= confat('at0074', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0072]/items[at0074]/value')
  end

  def at0074
    at0074model.num_value
  end

  def at0074=(at0074)
    at0074model.num_value = at0074
    at0074model.save
  end

  def at0076model
    @at0076 ||= confat('at0076', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0075]/items[at0076]/value')
  end

  def at0076
    at0076model.text_value
  end

  def at0076=(at0076)
    at0076model.text_value = at0076
    at0076model.save
  end

  def at0077model
    @at0077 ||= confat('at0077', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0075]/items[at0077]/value')
  end

  def at0077
    at0077model.text_value
  end

  def at0077=(at0077)
    at0077model.text_value = at0077
    at0077model.save
  end

  def at0078model
    @at0078 ||= confat('at0078', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060]/items[at0075]/items[at0078]/value')
  end

  def at0078
    at0078model.text_value
  end

  def at0078=(at0078)
    at0078model.text_value = at0078
    at0078model.save
  end

  def at0082model
    @at0082 ||= confat('at0082', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0081]/items[at0082]/value')
  end

  def at0082
    at0082model.text_value
  end

  def at0082=(at0082)
    at0082model.text_value = at0082
    at0082model.save
  end

  def at0083model
    @at0083 ||= confat('at0083', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0081]/items[at0083]/value')
  end

  def at0083
    at0083model.text_value
  end

  def at0083=(at0083)
    at0083model.text_value = at0083
    at0083model.save
  end

  def at0084model
    @at0084 ||= confat('at0084', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0081]/items[at0084]/value')
  end

  def at0084
    at0084model.text_value
  end

  def at0084=(at0084)
    at0084model.text_value = at0084
    at0084model.save
  end

  def at0085model
    @at0085 ||= confat('at0085', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0081]/items[at0085]/value')
  end

  def at0085
    at0085model.text_value
  end

  def at0085=(at0085)
    at0085model.text_value = at0085
    at0085model.save
  end

  def at0086model
    @at0086 ||= confat('at0086', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0086]/value')
  end

  def at0086
    at0086model.text_value
  end

  def at0086=(at0086)
    at0086model.text_value = at0086
    at0086model.save
  end


  private
  def confat(node_id, path)
    archetype.rms.find_by(:node_id => node_id) ||
      archetype.rms.build(:node_id => node_id, :path => path)
  end

  def translate(term)
    I18n.translate("open_ehr_ehr_observation_mml_test_module_v1.index.#{term}")
  end
end
