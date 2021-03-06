require 'mml'

class MMLPatient < Person
  after_save do
    party_identities.each do |identity|
      identity.save
      identity.identity_details do |detail|
        detail.save
        detail.detail_items do |item|
          item.save
        end
      end
    end
    party_details.each do |detail|
      detail.save
    end
  end

  def master_id
    MML::Id.new(value: super)
  end

  def master_id=(master_id)
    party_identities.build(name: 'regional id').identity_details.build(name: 'maiko id', value: master_id.value)
  end

  def other_ids
    party_identities.where(name: 'local id').map do |id|
      {issuer: id.purpose, id: id.identity_details.find_by(name: 'id').value}
    end
  end

  def other_ids=(ids)
    ids.each do |id|
      id.each do |k, v|
        party_identities.build(name: 'local id', purpose: k).identity_details.build(name: 'id', value: v)
      end
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

  def name
    party_identities.where(name: 'person name').map do |identity|
      family_name = family_name(identity)
      given_name = given_name('given name')
      full_name = find_name_by_type('full name')
      MML::Name.new(family_name: family_name, given_name: given_name, full_name: full_name)
    end
  end

  def details_general
    @details_general ||= party_details.build(name: 'general')
  end

  # def birthday
  #   Date.parse details_general.detail_items.find_by(name: 'birthday').value
  # end

  def birthday=(birthday)
    bd = Date.parse(birthday)
    details_general.detail_items.build(name: 'birthday', value: bd)
  end

  # def sex
  #   details_general.detail_items.find_by('gender').value
  # end

  def sex=(sex)
    details_general.detail_items.build(name: 'gender', value: sex)
  end

  def nationality
    party_details.find_by(name: 'general').
      detail_items.find_by(name: 'nationality').value
  end

  def nationality=(nationality)
    details_general.detail_items.
      build(name: 'nationality', value: nationality)
  end

  def marital
    party_details.find_by(name: 'general').
      detail_items.find_by(name: 'marital').value
  end

  def marital=(marital)
    details_general.detail_items.
      build(name: 'marital', value: marital)
  end

  def postal_addresses
    addresses.where(meaning: 'postal address')
  end

  def postal_addresses=(addresses)
    addresses.each do |name, details|
      contacts.build(name: name).addresses.
        build(meaning: 'postal address', name: name).
        address_details.build(details.map {|k,v| {name: k, value: v}})
    end
  end

  def phones
    addresses.where(name: 'phone')
  end

#  scope :phones, -> {self.addresses.where(name: 'phone')}

  def phones=(phones)
    phones.each do |name, details|
      contacts.build(name: name).addresses.
        build(meaning: 'telecom address', name: 'phone').
        address_details.build(details.map {|k,v| {name: k, value: v} })
    end
  end

  def family_name(identity)
    find_name_by_type(identity, 'family name')
  end

  def find_name_by_type(identity, type)
    confirm_name_by_type(type).exist? ? confirm_name_by_type(type).value : nil
  end

  def confirm_namename_by_type(type)
    identity.identity_details.find_by(name: type).exist?
  end

  def to_mml
    MML::Patient.info.new(masterId: masterId, birthday: birthday, sex: sex, nationality: nationality, marital: marital)
  end
end
