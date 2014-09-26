class MMLPatient < Person
  def master_id
    self.party_identities.where(name: 'regional id').first.
      identity_details.
      where(name: 'maiko id').first.value
  end

  def other_ids
    self.party_identities.where(name: 'local id')
  end

  def person_name
    @person_name ||= self.party_identities.build(name: 'person name', purpose: 'legal name')
  end

  def first_name
    self.party_identities.where(name: 'person name').first.identity_details.where(name: 'given name').first.value
  end

  def first_name=(first_name)
    person_name.identity_details.build(name: 'given name', value: given_name)
  end

  def family_name
    self.party_identities.where(name: 'person name').first.identity_details.where(name: 'family name')
  end

  def family_name=(family_name)
    person_name.identity_details.build(name: 'family name', value: family_name)
  end

  def given_name
    self.party_identities.where(name: 'person name').first.identity_details.where(name: 'given name')
  end

  def given_name=(given_name)
    person_name.identity_details.build(name: 'given name', value: given_name)
  end

  def birthday
    bd = self.party_details.where(name: 'general').first.
      detail_items.where(name: 'birthday').first.value
    Date.parse(bd)
  end

  def sex
    self.party_details.where(name: 'general').first.
      detail_items.where(name: 'gender').first.value
  end

  def nationality
    self.party_details.where(name: 'general').first.
      detail_items.where(name: 'nationality').first.value
  end

  def marital
    self.party_details.where(name: 'general').first.
      detail_items.where(name: 'marital').first.value
  end

  def postal_addresses
    self.addresses.where(meaning: 'postal address')
  end

  def phones
    self.addresses.where(name: 'phone')
  end
end
