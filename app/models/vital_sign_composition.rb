class VitalSignComposition < Composition
  def initialize
    super
    self.archetype_id = 'openEHR-EHR-COMPOSITION-report-vital_sign.v1'
  end
end
