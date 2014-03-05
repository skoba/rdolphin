require 'securerandom'
class TestModule
  include ActiveModel::Model
  validate :at0070_1, :at0070_2, precense: true
  define_model_callbacks :save
  before_save { self.valid? }
  
  def self.page(params)
    pages = nil
    if params[:value].blank?
      pages = self.all 
    else
      path = "/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.#{params[:item_name]}]/items[at0072]/items[at0070]/value"
      pages = Archetype.joins(:rms).where("archetypes.archetypeid = 'openEHR-EHR-OBSERVATION.mml_test_module.v1' and rms.path = '#{path}' and rms.num_value #{params[:equation]} #{params[:value]}").to_a.map do |archetype|
        TestModule.new(archetype: archetype)
      end
    end
    Kaminari.paginate_array(pages).page(params[:page])
  end

  def self.create(attributes = {})
    TestModule.new(attributes)
  end

  def self.all
    Archetype.where(archetypeid: 'openEHR-EHR-OBSERVATION.mml_test_module.v1').to_a.map do |archetype|
      TestModule.new(archetype: archetype)
    end
  end

  def self.find(id)
    TestModule.new(archetype: Archetype.find(id))
  end

  def self.build(params)
    TestModule.new(params)
  end

  def save
    archetype.rms.inject(archetype.save, :&) {|rm| rm.save}
  end

  def save!
    archetype.rms.inject(archetype.save!, :&) {|rm| rm.save!}
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

  # This method is important!
  # Clustor or item, which has repeated record
  def at0060
    archetype.rms.where("path like ?", '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.%')
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

  def at0061_1model
    @at0061_1 ||= conpath('at0061', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.1]/items[at0071]/items[at0061]/value')
  end

  def at0061_1
    at0061_1model.text_value
  end

  def at0061_1=(at0061_1)
    at0061_1model.text_value = at0061_1
    at0061_1model.save
  end

  def at0061_2model
    @at0061_2 ||= conpath('at0061', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.2]/items[at0071]/items[at0061]/value')
  end

  def at0061_2
    at0061_2model.text_value
  end

  def at0061_2=(at0061_2)
    at0061_2model.text_value = at0061_2
    at0061_2model.save
  end

  def at0061_3model
    @at0061_3 ||= conpath('at0061', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.3]/items[at0071]/items[at0061]/value')
  end

  def at0061_3
    at0061_3model.text_value
  end

  def at0061_3=(at0061_3)
    at0061_3model.text_value = at0061_3
    at0061_3model.save
  end

  def at0061_4model
    @at0061_4 ||= conpath('at0061', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.4]/items[at0071]/items[at0061]/value')
  end

  def at0061_4
    at0061_4model.text_value
  end

  def at0061_4=(at0061_4)
    at0061_4model.text_value = at0061_4
    at0061_4model.save
  end

  def at0061_5model
    @at0061_5 ||= conpath('at0061', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.5]/items[at0071]/items[at0061]/value')
  end

  def at0061_5
    at0061_5model.text_value
  end

  def at0061_5=(at0061_5)
    at0061_5model.text_value = at0061_5
    at0061_5model.save
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

  def at0070_1model
    @at0070_1 ||= conpath('at0070', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.1]/items[at0072]/items[at0070]/value')
  end

  def at0070_1
    at0070_1model.num_value
  end

  def at0070_1=(at0070_1)
    at0070_1model.num_value = at0070_1
    at0070_1model.save
  end

  def at0070_2model
    @at0070_2 ||= conpath('at0070', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.2]/items[at0072]/items[at0070]/value')
  end

  def at0070_2
    at0070_2model.num_value
  end

  def at0070_2=(at0070_2)
    at0070_2model.num_value = at0070_2
    at0070_2model.save
  end

  def at0070_3model
    @at0070_3 ||= conpath('at0070', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.3]/items[at0072]/items[at0070]/value')
  end

  def at0070_3
    at0070_3model.num_value
  end

  def at0070_3=(at0070_3)
    at0070_3model.num_value = at0070_3
    at0070_3model.save
  end

  def at0070_4model
    @at0070_4 ||= conpath('at0070', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.4]/items[at0072]/items[at0070]/value')
  end

  def at0070_4
    at0070_4model.num_value
  end

  def at0070_4=(at0070_4)
    at0070_4model.num_value = at0070_4
    at0070_4model.save
  end

  def at0070_5model
    @at0070_5 ||= conpath('at0070', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.5]/items[at0072]/items[at0070]/value')
  end

  def at0070_5
    at0070_5model.num_value
  end

  def at0070_5=(at0070_5)
    at0070_5model.num_value = at0070_5
    at0070_5model.save
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

  def at0076_1model
    @at0076_1 ||= conpath('at0076', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.1]/items[at0075]/items[at0076]/value')
  end

  def at0076_1
    at0076_1model.text_value
  end

  def at0076_1=(at0076_1)
    at0076_1model.text_value = at0076_1
    at0076_1model.save
  end

  def at0076_2model
    @at0076_2 ||= conpath('at0076', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.2]/items[at0075]/items[at0076]/value')
  end

  def at0076_2
    at0076_2model.text_value
  end

  def at0076_2=(at0076_2)
    at0076_2model.text_value = at0076_2
    at0076_2model.save
  end

  def at0076_3model
    @at0076_3 ||= conpath('at0076', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.3]/items[at0075]/items[at0076]/value')
  end

  def at0076_3
    at0076_3model.text_value
  end

  def at0076_3=(at0076_3)
    at0076_3model.text_value = at0076_3
    at0076_3model.save
  end

  def at0076_4model
    @at0076_4 ||= conpath('at0076', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.4]/items[at0075]/items[at0076]/value')
  end

  def at0076_4
    at0076_4model.text_value
  end

  def at0076_4=(at0076_4)
    at0076_4model.text_value = at0076_4
    at0076_4model.save
  end

  def at0076_5model
    @at0076_5 ||= conpath('at0076', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0060.5]/items[at0075]/items[at0076]/value')
  end

  def at0076_5
    at0076_5model.text_value
  end

  def at0076_5=(at0076_5)
    at0076_5model.text_value = at0076_5
    at0076_5model.save
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

  def at0087model
    @at0087 ||= confat('at0087', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0087]/value')
  end

  def at0087
    at0087model.text_value
  end

  def at0087=(at0087)
    at0087model.text_value = at0087
    at0087model.save
  end

  def at0088model
    @at0088 ||= confat('at0088', '/data[at0001]/events[at0002]/data[at0003]/items[at0048]/items[at0088]/value')
  end

  def at0088
    at0088model.text_value
  end

  def at0088=(at0088)
    at0088model.text_value = at0088
    at0088model.save
  end

  def to_csv
<<CSV
mmlLb:information,#{at0005},#{at0006},#{at0007},#{at0008}
mmlLb:reportStatus,#{at0010},#{at0011},#{at0012}
mmlLb:set,#{at0014},#{at0015},#{at0016}
mmlLb:facility,#{at0018},#{at0019},#{at0020}
mmlLb:department,#{at0023},#{at0022},#{at0024}
mmlLb:ward,#{at0026},#{at0027},#{at0028}
mmlLb:client,#{at0030},#{at0031},#{at0032}
mmlLb:laboratoryCenter,#{at0034},#{at0035},#{at0036}
mmlLb:technician,#{at0038},#{at0039},#{at0040}
mmlLb:repMemo,#{at0042},#{at0043},#{at0044},#{at0045}
mmlLb:repMemoF,#{at0047}
mmlLb:laboTest
mmlLb:specimenName,#{at0051},#{at0052},#{at0053}
mmlLb:spcMemo,#{at0055},#{at0056},#{at0057},#{at0058}
mmlLb:spcMemoF,#{at0059}
mmlLb:item
mmlLb:itemName,#{at0061_1},#{at0062},#{at0063},#{at0064},#{at0065},#{at0066},#{at0067},#{at0068}
mmlLb:value,#{at0069}
mmlLb:numValue,#{at0070_1},#{at0073},#{at0074},#{at0087},#{at0088}
mmlLb:unit,#{at0076_1},#{at0077},#{at0078}
mmlLb:referenceInfo,
mmlLb:itemMemo,#{at0082},#{at0083},#{at0084},#{at0085}
mmlLb:itemMemoF,#{at0086}
mmlLb:item
mmlLb:itemName,#{at0061_2},#{at0062},#{at0063},#{at0064},#{at0065},#{at0066},#{at0067},#{at0068}
mmlLb:value,#{at0069}
mmlLb:numValue,#{at0070_2},#{at0073},#{at0074},#{at0087},#{at0088}
mmlLb:unit,#{at0076_2},#{at0077},#{at0078}
mmlLb:referenceInfo,
mmlLb:itemMemo,#{at0082},#{at0083},#{at0084},#{at0085}
mmlLb:itemMemoF,#{at0086}
mmlLb:item
mmlLb:itemName,#{at0061_3},#{at0062},#{at0063},#{at0064},#{at0065},#{at0066},#{at0067},#{at0068}
mmlLb:value,#{at0069}
mmlLb:numValue,#{at0070_3},#{at0073},#{at0074},#{at0087},#{at0088}
mmlLb:unit,#{at0076_3},#{at0077},#{at0078}
mmlLb:referenceInfo,
mmlLb:itemMemo,#{at0082},#{at0083},#{at0084},#{at0085}
mmlLb:itemMemoF,#{at0086}
mmlLb:item
mmlLb:itemName,#{at0061_4},#{at0062},#{at0063},#{at0064},#{at0065},#{at0066},#{at0067},#{at0068}
mmlLb:value,#{at0069}
mmlLb:numValue,#{at0070_4},#{at0073},#{at0074},#{at0087},#{at0088}
mmlLb:unit,#{at0076_4},#{at0077},#{at0078}
mmlLb:referenceInfo,
mmlLb:itemMemo,#{at0082},#{at0083},#{at0084},#{at0085}
mmlLb:itemMemoF,#{at0086}
mmlLb:item
mmlLb:itemName,#{at0061_5},#{at0062},#{at0063},#{at0064},#{at0065},#{at0066},#{at0067},#{at0068}
mmlLb:value,#{at0069}
mmlLb:numValue,#{at0070_5},#{at0073},#{at0074},#{at0087},#{at0088}
mmlLb:unit,#{at0076_5},#{at0077},#{at0078}
mmlLb:referenceInfo,
mmlLb:itemMemo,#{at0082},#{at0083},#{at0084},#{at0085}
mmlLb:itemMemoF,#{at0086}

CSV
  end

  private
  def confat(node_id, path)
    archetype.rms.find_by(:node_id => node_id) ||
      archetype.rms.build(:node_id => node_id, :path => path)
  end

  def conpath(node_id, path)
    archetype.rms.find_by(path: path) ||
      archetype.rms.build(:node_id => node_id, :path => path)
  end

  def translate(term)
    I18n.translate("test_module.index.#{term}")
  end
end
