xml.instruct!
xml.mmlPi(:PatientModule,{
            'xmlns:mmlNm' => "http://www.medxml.net/MML/SharedComponent/Name/1.0",
            'xmlns:mmlCm' => "http://www.medxml.net/MML/SharedComponent/Common/1.0",
            'xmlns:mmlVs' => "http://www.medxml.net/MML/ContentModule/VitaSign/1.0",
            'xmlns:mmlAd' => "http://www.medxml.net/MML/ContentModule/Address/1.0",
            'xmlns:mmlPh' => "http://www.medxml.net/MML/ContentModule/Phone/1.0",
            'xmlns:mmlPi' => "http://www.medxml.net/MML/ContentModule/PatientInfo/1.0",
            'xmlns:xsd' => "http://www.w3.org/2001/XMLSchema",
            'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
            'xsi:schemaLocation' => "http://www.medxml.net/MML/ContentModule/PatientInfo/1.0"}) do
  xml.mmlPi :uniqueInfo do
    xml.mmlPi :masterId do
      xml.mmlCm :Id, 'mmlCm:type' => "local", 'mmlCm:tableId'=>"MML0024" do
        @mml_patient.master_id
      end
      @mml_patient.other_ids do |id|
        xml.mmlCm :Id, 'mmlCm:type' => 'facility', 'mmlCm:tableId'=>"MML0024" do
          id.identity_details.first.value
        end
      end

      xml.mmlPi :personName do
        @mml_patient.person_name.each do |name|
          xml.mmlNm :Name do #('mmlNm:repCode'=>"A") do
            xml.mmlNm :family, @mml_patient.person_name.first.identity_details.where(name: 'family name').first.value 
            xml.mmlNm :given, @mml_patient.person_name.first.identity_details.where(name: 'given name').first.value
          end
        end
      end
      xml.mmlPi :birthday, @mml_patient.birthday if @mml_patient.birthday
      xml.mmlPi :sex, @mml_patient.sex if @mml_patient.sex
      xml.mmlPi :nationality, @mml_patient.nationality if @mml_patient.nationality
#      xml.mmlPi :marital, @mml_patient.marital if @mml_patient.marital
      xml.mmlPi :addresses do
        @mml_patient.postal_addresses.each do |address|
          xml.mmlAd :Address, 'mmlAd:repCode' => 'A', 'mmlAd:addressClass' => address.contact.name, 'mmlAd:tableId' => 'mml0024' do
            address.address_details.each do |detail|
              xml.mmlAd detail.name.tr(' ', '_').camelize(:lower).to_sym, detail.value
            end
          end
        end
      end
      @mml_patient.phones.each do |phone|
        xml.mmlPh :Phone do
          phone.address_details.each do |detail|
            xml.mmlPh detail.name.to_sym, detail.value
          end
        end
      end
    end
  end
end
