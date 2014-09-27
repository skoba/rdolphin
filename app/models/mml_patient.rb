class MMLPatient < Person
  after_save do
    self.party_identities.each do |identity|
      identity.save
      identity.identity_details do |detail|
        detail.save
        detail.detail_items do |item|
          item.save
        end
      end
    end
    self.party_details.each do |detail|
      detail.save
    end
  end

  def master_id
    self.party_identities.where(name: 'regional id').first.
      identity_details.
      where(name: 'maiko id').first.value
  end

  def master_id=(master_id)
    self.party_identities.build(name: 'regional id').identity_details.build(name: 'maiko id', value: master_id)
  end

  def other_ids
    self.party_identities.where(name: 'local id').map do |id|
      {issuer: id.purpose, id: id.identity_details.where(name: 'id').first.value}
    end
  end

  def other_ids=(ids)
    ids.each do |k, v|
      self.party_identities.build(name: 'local id', purpose: k).identity_details.build(name: 'id', value: v)
    end
  end

  def person_name
    @person_name ||= self.party_identities.build(name: 'person name', purpose: 'legal name')
  end

  def first_name
    self.party_identities.where(name: 'person name').first.identity_details.where(name: 'given name').first.value
  end

  def first_name=(first_name)
    person_name.identity_details.build(name: 'given name', value: first_name)
  end

  def family_name
    self.party_identities.where(name: 'person name').first.identity_details.where(name: 'family name').first.value
  end

  def family_name=(family_name)
    person_name.identity_details.build(name: 'family name', value: family_name)
  end

  def given_name
    self.party_identities.where(name: 'person name', purpose: 'legal name').first.identity_details.where(name: 'given name')
  end

  def given_name=(given_name)
    person_name.identity_details.build(name: 'given name', value: given_name)
  end

  def details_general
    @details_general ||= self.party_details.build(name: 'general')
  end

  def birthday
    bd = self.party_details.where(name: 'general').first.
      detail_items.where(name: 'birthday').first.value
    Date.parse(bd)
  end

  def birthday=(birthday)
    bd = Date.parse(birthday)
    details_general.detail_items.build(name: 'birthday', value: bd)
  end

  def sex
    self.party_details.where(name: 'general').first.
      detail_items.where(name: 'gender').first.value
  end

  def sex=(sex)
    details_general.detail_items.build(name: 'gender', value: sex)
  end

  def nationality
    self.party_details.where(name: 'general').first.
      detail_items.where(name: 'nationality').first.value
  end

  def nationality=(nationality)
    details_general.detail_items.
      build(name: 'nationality', value: nationality)
  end

  def marital
    self.party_details.where(name: 'general').first.
      detail_items.where(name: 'marital').first.value
  end

  def marital=(marital)
    details_general.detail_items.
      build(name: 'marital', value: marital)
  end

  def postal_addresses
    self.addresses.where(meaning: 'postal address')
  end

  def postal_addresses=(addresses)
    self.addresses.
      build(meaning: 'postal address', name: 'home').
      address_details.build(addresses)
  end

  def phones
    self.addresses.where(name: 'phone')
  end

  def phones=(phones)
    self.contacts.buildaddresses.
      build(meaning: 'Telecoms', name: 'Work').
      address_details.build(phones.map {|k,v| {name: k, value: v} })
  end
end
