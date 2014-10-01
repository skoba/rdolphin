require 'rails_helper'

RSpec.describe DataValue, :type => :model do
  let(:data_value) {build :data_value}

  it 'is valid' do
    expect(data_value).to be_valid
  end

  context 'boolean value' do
    it {is_expected.to have_db_column :bool_value}

    it 'shows boolean value' do
      expect(data_value.bool_value).to be_truthy
    end
  end

  context 'text value' do
    it {is_expected.to have_db_column :text_value}

    it 'shows text value' do
      expect(data_value.text_value).to eq 'Sample data'
    end
  end

  context 'integer value' do
    it {is_expected.to have_db_column :int_value}
  end

  context 'real value' do
    it {is_expected.to have_db_column :real_value}

    it 'shows real value' do
      expect(data_value.real_value).to eq 567.89
    end
  end

  context 'decimal value' do
    it {is_expected.to have_db_column :decimal_value}

    it 'shows decimal_value' do
      expect(data_value.decimal_value).to eq 10.001
    end
  end

  context 'date value' do
    it {is_expected.to have_db_column :date_value}

    it 'shows date value' do
      expect(data_value.date_value).to eq Date.parse("2014-08-06")
    end
  end

  context 'date time value' do
    it {is_expected.to have_db_column :date_time_value}

    it 'shows date time value' do
      expect(data_value.date_value).to eq Date.parse('2014-08-06T12:13:33')
    end
  end

  context 'code' do
    it {is_expected.to have_db_column :code}

    it 'shows code' do
      expect(data_value.code).to eq 'C089'
    end
  end

  # context 'association' do
  #   it {is_expected.to have_db_index(:element_id)}
  #   it {is_expected.to belong_to :item}

  #   it 'relates element' do
  #     expect(data_value.item.name).to eq 'Leaf element'
  #   end
  # end
end
