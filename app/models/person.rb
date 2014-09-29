class Person < Party
  has_one :ehr

  def master_id
    self.party_identities.find_by(name: 'regional id').
      identity_details.
      find_by(name: 'maiko id').value
  end

  def person_name
    @person_name ||= self.party_identities.build(name: 'person name', purpose: 'legal name')
  end

  def first_name
    self.party_identities.find_by(name: 'person name').identity_details.find_by(name: 'given name').value
  end

  def family_name
    self.party_identities.find_by(name: 'person name').identity_details.find_by(name: 'family name').value
  end

  def given_name
    self.party_identities.
      find_by(name: 'person name', purpose: 'legal name').
      identity_details.
      find_by(name: 'given name')
  end

  def birthday
    bd = self.party_details.
      find_by(name: 'general').
      detail_items.find_by(name: 'birthday').value
    Date.parse(bd)
  end

  def sex
    self.party_details.find_by(name: 'general').
      detail_items.find_by(name: 'gender').value
  end
end
