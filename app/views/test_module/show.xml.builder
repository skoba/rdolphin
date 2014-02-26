xml.instruct!
xml.mml('xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xmlns:xsd' =>"http://www.w3.org/2001/XMLSchema",
        'xmlns' => "http://www.medxml.org/v4",
        'xmlns:mmlLb' => "http://www.medxml.net/MML/ContentModule/TestModule/1.0/") do
  xml.mmlLb :TestModule do
    attributes = Hash.new
    attributes['mmlLb:registId'] = @test_module.at0005
    attributes['mmlLb:sampleTime'] = @test_module.at0006 if @test_module.at0006.present?
    attributes['mmlLb:registTime'] = @test_module.at0007
    attributes['mmlLb:reportTime'] = @test_module.at0008
    xml.mmlLb :information, attributes do
      attributes = Hash.new
      attributes['mmlLb:statusCode'] = @test_module.at0011
      attributes['mmlLb:statusCodeId'] = @test_module.at0012
      xml.mmlLb :reportStatus, attributes, @test_module.at0010
      attributes = Hash.new
      attributes['mmlLb:setCode'] = @test_module.at0015 if @test_module.at0015.present?
      attributes['mmlLb:setCodeId'] = @test_module.at0016 if @test_module.at0016.present?
      xml.mmlLb :set, attributes, @test_module.at0014
      attributes = Hash.new
      attributes['mmlLb:facilityCode'] = @test_module.at0019
      attributes['mmlLb:facilityCodeId'] = @test_module.at0020
      xml.mmlLb :facility, attributes, @test_module.at0018
      attributes = Hash.new
      attributes['mmlLb:depCode'] = @test_module.at0022 if @test_module.at0022.present?
      attributes['mmlLb:depCodeId'] = @test_module.at0024 if @test_module.at0024.present?
      xml.mmlLb :department, attributes, @test_module.at0023 if @test_module.at0023.present?
      attributes = Hash.new
      attributes['mmlLb:wardCode'] = @test_module.at0027 if @test_module.at0027.present?
      attributes['mmlLb:wardCodeId'] = @test_module.at0028 if @test_module.at0028.present?
      xml.mmlLb :ward, attributes, @test_module.at0026 if @test_module.at0026.present?
      attributes = Hash.new
      attributes['mmlLb:clientCode'] = @test_module.at0031 if @test_module.at0031.present?
      attributes['mmlLb:clientCodeId'] = @test_module.at0032 if @test_module.at0032.present?
      xml.mmlLb :client, attributes, @test_module.at0030 if @test_module.at0030.present?
      attributes = Hash.new
      attributes['mmlLb:centerCode'] = @test_module.at0035 if @test_module.at0035.present?
      attributes['mmlLb:centerCodeId'] = @test_module.at0036 if @test_module.at0036.present?
      xml.mmlLb :laboratoryCenter, attributes, @test_module.at0034 if @test_module.at0034
      atributes = Hash.new
      attributes['mmlLb:tecCode'] = @test_module.at0039 if @test_module.at0039.present?
      attributes['mmlLb:tecCodeId'] = @test_module.at0040 if @test_module.at0040.present?
      xml.mmlLb :technician, attributes, @test_module.at0038 if @test_module.at0038.present?
      attributes = Hash.new
      attributes['mmlLb:repCodeName'] = @test_module.at0043 if @test_module.at0043.present?
      attributes['mmlLb:repCodeId'] = @test_module.at0045 if @test_module.at0045.present?
      xml.mmlLb :repMemo, attributes, @test_module.at0044 if @test_module.at0044.present?
      xml.mmlLb :repMemoF, @test_module.at0047 if @test_module.at0047.present?
      xml.mmlLb :laboTest do
        xml.mmlLb :specimen do
          attributes = Hash.new
          attributes['mmlLb:spCode'] = @test_module.at0052
          attributes['mmlLb:spCodeId'] = @test_module.at0053
          xml.mmlLb :specimenName, attributes, @test_module.at0051
          attributes = Hash.new
          attributes['mmlLb:smCodeName'] = @test_module.at0056 if @test_module.at0056.present?
          attributes['mmlLb:smCode'] = @test_module.at0057 if @test_module.at0057.present?
          attributes['mmlLb:smCodeId'] = @test_module.at0058 if @test_module.at0058.present?
          xml.mmlLb :spcMemo, attributes, @test_module.at0055 if @test_module.at0055.present?
          xml.mmlLb :spcMemoF, @test_module.at0059 if @test_module.at0059.present?
        end
        xml.mmlLb :item do
          attributes = Hash.new
          attributes['mmlLb:itCode'] = @test_module.at0062 if @test_module.at0062.present?
          attributes['mmlLb:itCodeId'] = @test_module.at0063 if @test_module.at0063.present?
	  attributes['mmlLb:Acode'] = @test_module.at0064 if @test_module.at0064.present?
          attributes['mmlLb:Icode'] = @test_module.at0065 if @test_module.at0065.present?
          attributes['mmlLb:Scode'] = @test_module.at0066 if @test_module.at0066.present?
          attributes['mmlLb:Mcode'] = @test_module.at0067 if @test_module.at0067.present?
          attributes['mmlLb:Rcode'] = @test_module.at0068 if @test_module.at0068.present?
          xml.mmlLb :itemName, attributes, @test_module.at0061_1
          xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
          attributes = Hash.new
          attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
          attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
          attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
          attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
          xml.mmlLb :numValue, attributes, @test_module.at0070_1 if @test_module.at0070_1.present?
          attributes = Hash.new
          attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077p.present?
          attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
          xml.mmlLb :unit, attributes, @test_module.at0076_1 if @test_module.at0076_1.present?
          attributes = Hash.new
          attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
          attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
          attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
          xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
          xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
        end
        xml.mmlLb :item do
          attributes = Hash.new
          attributes['mmlLb:itCode'] = @test_module.at0062 if @test_module.at0062.present?
          attributes['mmlLb:itCodeId'] = @test_module.at0063 if @test_module.at0063.present?
	  attributes['mmlLb:Acode'] = @test_module.at0064 if @test_module.at0064.present?
          attributes['mmlLb:Icode'] = @test_module.at0065 if @test_module.at0065.present?
          attributes['mmlLb:Scode'] = @test_module.at0066 if @test_module.at0066.present?
          attributes['mmlLb:Mcode'] = @test_module.at0067 if @test_module.at0067.present?
          attributes['mmlLb:Rcode'] = @test_module.at0068 if @test_module.at0068.present?
          xml.mmlLb :itemName, attributes, @test_module.at0061_2
          xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
          attributes = Hash.new
          attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
          attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
          attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
          attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
          xml.mmlLb :numValue, attributes, @test_module.at0070_2 if @test_module.at0070_2.present?
          attributes = Hash.new
          attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077.present?
          attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
          xml.mmlLb :unit, attributes, @test_module.at0076_2 if @test_module.at0076_2.present?
          attributes = Hash.new
          attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
          attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
          attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
          xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
          xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
        end
        xml.mmlLb :item do
          attributes = Hash.new
          attributes['mmlLb:itCode'] = @test_module.at0062 if @test_module.at0062.present?
          attributes['mmlLb:itCodeId'] = @test_module.at0063 if @test_module.at0063.present?
	  attributes['mmlLb:Acode'] = @test_module.at0064 if @test_module.at0064.present?
          attributes['mmlLb:Icode'] = @test_module.at0065 if @test_module.at0065.present?
          attributes['mmlLb:Scode'] = @test_module.at0066 if @test_module.at0066.present?
          attributes['mmlLb:Mcode'] = @test_module.at0067 if @test_module.at0067.present?
          attributes['mmlLb:Rcode'] = @test_module.at0068 if @test_module.at0068.present?
          xml.mmlLb :itemName, attributes, @test_module.at0061_3
          xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
          attributes = Hash.new
          attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
          attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
          attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
          attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
          xml.mmlLb :numValue, attributes, @test_module.at0070_3 if @test_module.at0070_3.present?
          attributes = Hash.new
          attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077.present?
          attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
          xml.mmlLb :unit, attributes, @test_module.at0076_3 if @test_module.at0076_3.present?
          attributes = Hash.new
          attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
          attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
          attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
          xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
          xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
        end
        xml.mmlLb :item do
          attributes = Hash.new
          attributes['mmlLb:itCode'] = @test_module.at0062 if @test_module.at0062.present?
          attributes['mmlLb:itCodeId'] = @test_module.at0063 if @test_module.at0063.present?
	  attributes['mmlLb:Acode'] = @test_module.at0064 if @test_module.at0064.present?
          attributes['mmlLb:Icode'] = @test_module.at0065 if @test_module.at0065.present?
          attributes['mmlLb:Scode'] = @test_module.at0066 if @test_module.at0066.present?
          attributes['mmlLb:Mcode'] = @test_module.at0067 if @test_module.at0067.present?
          attributes['mmlLb:Rcode'] = @test_module.at0068 if @test_module.at0068.present?
          xml.mmlLb :itemName, attributes, @test_module.at0061_4
          xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
          attributes = Hash.new
          attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
          attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
          attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
          attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
          xml.mmlLb :numValue, attributes, @test_module.at0070_4 if @test_module.at0070_4.present?
          attributes = Hash.new
          attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077.present?
          attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
          xml.mmlLb :unit, attributes, @test_module.at0076_4 if @test_module.at0076_4.present?
          attributes = Hash.new
          attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
          attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
          attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
          xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
          xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
        end
        xml.mmlLb :item do
          attributes = Hash.new
          attributes['mmlLb:itCode'] = @test_module.at0062 if @test_module.at0062.present?
          attributes['mmlLb:itCodeId'] = @test_module.at0063 if @test_module.at0063.present?
	  attributes['mmlLb:Acode'] = @test_module.at0064 if @test_module.at0064.present?
          attributes['mmlLb:Icode'] = @test_module.at0065 if @test_module.at0065.present?
          attributes['mmlLb:Scode'] = @test_module.at0066 if @test_module.at0066.present?
          attributes['mmlLb:Mcode'] = @test_module.at0067 if @test_module.at0067.present?
          attributes['mmlLb:Rcode'] = @test_module.at0068 if @test_module.at0068.present?
          xml.mmlLb :itemName, attributes, @test_module.at0061_5
          xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
          attributes = Hash.new
          attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
          attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
          attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
          attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
          xml.mmlLb :numValue, attributes, @test_module.at0070_5 if @test_module.at0070_5.present?
          attributes = Hash.new
          attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077.present?
          attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
          xml.mmlLb :unit, attributes, @test_module.at0076_5 if @test_module.at0076_5.present?
          attributes = Hash.new
          attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
          attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
          attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
          xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
          xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
        end
      end
    end
  end
end
