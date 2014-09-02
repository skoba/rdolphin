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
    self.party_identities.where(name: 'person name')
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
