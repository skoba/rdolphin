xml.mmlLb(:TestModule, {
            'xmlns:mmlNm' => "http://www.medxml.net/MML/SharedComponent/Name/1.0",
            'xmlns:mmlCm' => "http://www.medxml.net/MML/SharedComponent/Common/1.0",
            'xmlns:mmlVs' => "http://www.medxml.net/MML/ContentModule/VitaSign/1.0",
            'xmlns:mmlAd' => "http://www.medxml.net/MML/ContentModule/Address/1.0",
            'xmlns:mmlPh' => "http://www.medxml.net/MML/ContentModule/Phone/1.0",
            'xmlns:mmlPi' => "http://www.medxml.net/MML/ContentModule/PatientInfo/1.0",
            'xmlns:mmlLb' => "http://www.medxml.net/MML/ContentModule/TestModule/1.0",
            
            'xmlns:xsd' => "http://www.w3.org/2001/XMLSchema",
            'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
            'xsi:schemaLocation' => "http://www.medxml.net/MML/ContentModule/TestModule/1.0"}) do
  xml.mmlLb :registId, @composition.uid
  xml.mmlLb :labTest do
    xml.mmlLb :item do
      @composition.content_items.each do |content_item|
        xml.mmlLb :itemName, content_item.items.find_by(nodeid: 'at0005').data_value.text_value
        xml.mmlLb :numValue, content_item.items.find_by(nodeid: 'at0078').data_value.decimal_value
        xml.mmlLb :unit, content_item.items.find_by(nodeid: 'at0078').data_value.unit
      end
    end
  end
end
