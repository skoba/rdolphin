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

  def master_id=(master_id)
    self.party_identities.build(name: 'regional id').identity_details.build(name: 'maiko id', value: master_id)
  end

  def other_ids
    self.party_identities.where(name: 'local id').map do |id|
      {issuer: id.purpose, id: id.identity_details.find_by(name: 'id').value}
    end
  end

  def other_ids=(ids)
    ids.each do |k, v|
      self.party_identities.build(name: 'local id', purpose: k).identity_details.build(name: 'id', value: v)
    end
  end


  def first_name=(first_name)
    person_name.identity_details.build(name: 'given name', value: first_name)
  end


  def family_name=(family_name)
    person_name.identity_details.build(name: 'family name', value: family_name)
  end

  def given_name=(given_name)
    person_name.identity_details.
      build(name: 'given name', value: given_name)
  end

  def details_general
    @details_general ||= self.party_details.build(name: 'general')
  end


  def birthday=(birthday)
    bd = Date.parse(birthday)
    details_general.detail_items.build(name: 'birthday', value: bd)
  end

  def sex=(sex)
    details_general.detail_items.build(name: 'gender', value: sex)
  end

  def nationality
    self.party_details.find_by(name: 'general').
      detail_items.find_by(name: 'nationality').value
  end

  def nationality=(nationality)
    details_general.detail_items.
      build(name: 'nationality', value: nationality)
  end

  def marital
    self.party_details.find_by(name: 'general').
      detail_items.find_by(name: 'marital').value
  end

  def marital=(marital)
    details_general.detail_items.
      build(name: 'marital', value: marital)
  end

  def postal_addresses
    self.addresses.where(meaning: 'postal address')
  end

  def postal_addresses=(addresses)
    addresses.each do |name, details|
      self.contacts.build(name: name).addresses.
        build(meaning: 'postal address', name: name).
        address_details.build(details.map {|k,v| {name: k, value: v}})
    end
  end

  def phones
    self.addresses.where(name: 'phone')
  end

#  scope :phones, -> {self.addresses.where(name: 'phone')}

  def phones=(phones)
    phones.each do |name, details|
      self.contacts.build(name: name).addresses.
        build(meaning: 'telecom address', name: 'phone').
        address_details.build(details.map {|k,v| {name: k, value: v} })
    end
  end

  def to_mml
    MML::Patient.info.new(masterId: masterId, birthday: birthday, sex: sex, nationality: nationality, marital: marital)
  end
end
