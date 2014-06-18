class VitalSignComposition < Composition
  def initialize
    super
    self.archetype_id = 'openEHR-EHR-COMPOSITION-report-vital_sign.v1'
  end

  def systolic_blood_pressure
    self.content_items.where(archetype_id: 'openEHR-EHR-OBSERVATION.blood_pressure.v1', node_id: 'at0004').first.num_value
  end

  def diastolic_blood_pressure
    self.content_items.where(archetype_id: 'openEHR-EHR-OBSERVATION.blood_pressure.v1', node_id: 'at0005').first.num_value
  end

  def pulse_rate
    self.content_items.where(archetype_id: 'openEHR-EHR-OBSERVATION.pulse.v1', node_id: 'at0004').first.num_value
  end

  def to_csv
    "#{self.systolic_blood_pressure},#{self.diastolic_blood_pressure},#{self.pulse_rate}\n"
  end
end
