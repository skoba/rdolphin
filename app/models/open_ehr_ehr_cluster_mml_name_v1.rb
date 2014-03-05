require 'securerandom'
class OpenEhrEhrClusterMmlNameV1
  include ActiveModel::Model

  validates :at0001, :at0002, :at0003, presence: true
  define_model_callbacks :save
  before_save { self.valid? }

  def self.create(attributes = {})
    OpenEhrEhrClusterMmlNameV1.new(attributes)
  end

  def self.all
    Archetype.where(archetypeid: 'openEHR-EHR-CLUSTER.mml_name.v1').to_a.map do |archetype|
      OpenEhrEhrClusterMmlNameV1.new(archetype: archetype)
    end
  end

  def self.find(id)
    OpenEhrEhrClusterMmlNameV1.new(archetype: Archetype.find(id))
  end

  def self.build(params)
    OpenEhrEhrClusterMmlNameV1.new(params)
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
    self.attributes = attributes
  end

  def attributes=(attributes)
    attributes.each do |k, v|
      self.public_send("#{k}=", v )
    end
  end

  def id
    archetype.id
  end

  def id=(id)
    self.archetype = Archetype.find(id)
  end

  def archetype
    @archetype ||= Archetype.new(archetypeid: 'openEHR-EHR-CLUSTER.mml_name.v1', uid: SecureRandom.uuid)
  end

  def archetype=(archetype)
    @archetype = archetype
  end

  def at0002model
    @at0002 ||= confat('at0002', '/items[at0002]/value')
  end

  def at0002
    at0002model.text_value
  end

  def at0002=(at0002)
    at0002model.text_value = at0002
    at0002model.save
  end

  def at0001model
    @at0001 ||= confat('at0001', '/items[at0001]/value')
  end

  def at0001
    at0001model.text_value
  end

  def at0001=(at0001)
    at0001model.text_value = at0001
    at0001model.save
  end

  def at0003model
    @at0003 ||= confat('at0003', '/items[at0003]/value')
  end

  def at0003
    at0003model.text_value
  end

  def at0003=(at0003)
    at0003model.text_value = at0003
    at0003model.save
  end

  def at0004model
    @at0004 ||= confat('at0004', '/items[at0004]/value')
  end

  def at0004
    at0004model.text_value
  end

  def at0004=(at0004)
    at0004model.text_value = at0004
    at0004model.save
  end

  def at0005model
    @at0005 ||= confat('at0005', '/items[at0005]/value')
  end

  def at0005
    at0005model.text_value
  end

  def at0005=(at0005)
    at0005model.text_value = at0005
    at0005model.save
  end

  def at0006model
    @at0006 ||= confat('at0006', '/items[at0006]/value')
  end

  def at0006
    at0006model.text_value
  end

  def at0006=(at0006)
    at0006model.text_value = at0006
    at0006model.save
  end


  private
  def confat(node_id, path)
    archetype.rms.find_by(:node_id => node_id) ||
      archetype.rms.build(:node_id => node_id, :path => path)
  end

  def translate(term)
    I18n.translate("open_ehr_ehr_cluster_mml_name_v1.index.#{term}")
  end
end
