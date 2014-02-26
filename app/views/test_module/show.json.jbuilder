json.mmlLb do
  json.information do
    json.registId @test_module.at0005
    json.sampleTime @test_module.at0006
    json.sampleTime @test_module.at0006
    json.registTime @test_module.at0007
    json.reportTime @test_module.at0008
    json.status do
      json.statusCode @test_module.at0011
      json.statusCodeId = @test_module.at0012
      json.reportStatus @test_module.at0010
    end
    json.set do
      json.setCode @test_module.at0015
      json.setCodeId @test_module.at0016
      json.set @test_module.at0014
    end
    json.facility do
      json.facilityCode @test_module.at0019
      json.facilityCodeId @test_module.at0020
      json.facility @test_module.at0018
    end
    json.department do
      json.depCode @test_module.at0022 if @test_module.at0022.present?
      json.depCodeId @test_module.at0024 if @test_module.at0024.present?
      json.department @test_module.at0023
    end if @test_module.at0023.present?
    json.ward do
      json.wardCode @test_module.at0027 if @test_module.at0027.present?
      json.wardCodeId @test_module.at0028 if @test_module.at0028.present?
      json.ward mmlLb @test_module.at0026 if @test_module.at0026.present?
    end if @test_module.at0026.present?
    json.client do
      json.clientCode @test_module.at0031 if @test_module.at0031.present?
      json.clientCodeId @test_module.at0032 if @test_module.at0032.present?
      json.client @test_module.at0030 if @test_module.at0030.present?
    end if @test_module.at0030.present?
    json.laboratoryCenter do
      json.centerCode @test_module.at0035 if @test_module.at0035.present?
      json.centerCodeId @test_module.at0036 if @test_module.at0036.present?
      json.laboratoryCenter @test_module.at0034 if @test_module.at0034
    end if @test_module.at0034
    json.technician do
      json.tecCode @test_module.at0039 if @test_module.at0039.present?
      json.tecCodeId @test_module.at0040 if @test_module.at0040.present?
      json.technician @test_module.at0038 if @test_module.at0038.present?
    end if @test_module.at0038.present?
    json.repMemo do
      json.repCodeName @test_module.at0043 if @test_module.at0043.present?
      json.repCodeId @test_module.at0045 if @test_module.at0045.present?
      json.repMemo @test_module.at0044 if @test_module.at0044.present?
    end if @test_module.at0044.present?
    json.repMemoF @test_module.at0047 if @test_module.at0047.present?
    json.laboTest do
      json.specimen do
        json.specimenName do
          json.spCode @test_module.at0052
          json.spCodeId @test_module.at0053
          json.specimenName @test_module.at0051
        end
        json.spcMemo do
          json.smCodeName @test_module.at0056 if @test_module.at0056.present?
          json.smCode @test_module.at0057 if @test_module.at0057.present?
          json.smCodeId @test_module.at0058 if @test_module.at0058.present?
          json.spcMemo @test_module.at0055 if @test_module.at0055.present?
        end if @test_module.at0055.present?
        json.spcMemoF @test_module.at0059 if @test_module.at0059.present?
        json.item do
          json.itemName do
            json.itCode @test_module.at0062 if @test_module.at0062.present?
            json.itCodeId @test_module.at0063 if @test_module.at0063.present?
	    json.Acode @test_module.at0064 if @test_module.at0064.present?
            json.Scode @test_module.at0066 if @test_module.at0066.present?
            json.Mcode @test_module.at0067 if @test_module.at0067.present?
            json.Rcode @test_module.at0068 if @test_module.at0068.present?
            json.itemName @test_module.at0061_1
          end
          json.value @test_module.at0069 if @test_module.at0069.present?
          json.numValue do
            json.up @test_module.at0073 if @test_module.at0073.present?
            json.low @test_module.at0074 if @test_module.at0074.present?
            json.normal @test_module.at0087 if @test_module.at0087.present?
            json.out @test_module.at0088 if @test_module.at0088.present?
            json.numValue @test_module.at0070_1 if @test_module.at0070_1.present?
          end
          json.unit do
            json.uCode @test_module.at0077 if @test_module.at0077.present?
            json.uCodeId @test_module.at0078 if @test_module.at0078.present?
            json.unit @test_module.at0076_1 if @test_module.at0076_1.present?
          end
          json.itemMemo do
            json.imCodeName @test_module.at0083 if @test_module.at0083.present?
            json.imCode @test_module.at0084 if @test_module.at0084.present?
            json.imCodeId @test_module.at0085 if @test_module.at0085.present?
            json.itemMemo @test_module.at0082 if @test_module.at0082.present?
          end if @test_module.at0082.present?
          json.itemMemoF @test_module.at0086 if @test_module.at0086.present?
        end
        json.item do
          json.itemName do
            json.itCode @test_module.at0062 if @test_module.at0062.present?
            json.itCodeId @test_module.at0063 if @test_module.at0063.present?
	    json.Acode @test_module.at0064 if @test_module.at0064.present?
            json.Scode @test_module.at0066 if @test_module.at0066.present?
            json.Mcode @test_module.at0067 if @test_module.at0067.present?
            json.Rcode @test_module.at0068 if @test_module.at0068.present?
            json.itemName @test_module.at0061_2
          end
          json.value @test_module.at0069 if @test_module.at0069.present?
          json.numValue do
            json.up @test_module.at0073 if @test_module.at0073.present?
            json.low @test_module.at0074 if @test_module.at0074.present?
            json.normal @test_module.at0087 if @test_module.at0087.present?
            json.out @test_module.at0088 if @test_module.at0088.present?
            json.numValue @test_module.at0070_2 if @test_module.at0070_2.present?
          end
          json.unit do
            json.uCode @test_module.at0077 if @test_module.at0077.present?
            json.uCodeId @test_module.at0078 if @test_module.at0078.present?
            json.unit @test_module.at0076_2 if @test_module.at0076_2.present?
          end
          json.itemMemo do
            json.imCodeName @test_module.at0083 if @test_module.at0083.present?
            json.imCode @test_module.at0084 if @test_module.at0084.present?
            json.imCodeId @test_module.at0085 if @test_module.at0085.present?
            json.itemMemo @test_module.at0082 if @test_module.at0082.present?
          end if @test_module.at0082.present?
          json.itemMemoF @test_module.at0086 if @test_module.at0086.present?
        end
        json.item do
          json.itemName do
            json.itCode @test_module.at0062 if @test_module.at0062.present?
            json.itCodeId @test_module.at0063 if @test_module.at0063.present?
	    json.Acode @test_module.at0064 if @test_module.at0064.present?
            json.Scode @test_module.at0066 if @test_module.at0066.present?
            json.Mcode @test_module.at0067 if @test_module.at0067.present?
            json.Rcode @test_module.at0068 if @test_module.at0068.present?
            json.itemName @test_module.at0061_3
          end
          json.value @test_module.at0069 if @test_module.at0069.present?
          json.numValue do
            json.up @test_module.at0073 if @test_module.at0073.present?
            json.low @test_module.at0074 if @test_module.at0074.present?
            json.normal @test_module.at0087 if @test_module.at0087.present?
            json.out @test_module.at0088 if @test_module.at0088.present?
            json.numValue @test_module.at0070_3 if @test_module.at0070_3.present?
          end
          json.unit do
            json.uCode @test_module.at0077 if @test_module.at0077.present?
            json.uCodeId @test_module.at0078 if @test_module.at0078.present?
            json.unit @test_module.at0076_3 if @test_module.at0076_3.present?
          end
          json.itemMemo do
            json.imCodeName @test_module.at0083 if @test_module.at0083.present?
            json.imCode @test_module.at0084 if @test_module.at0084.present?
            json.imCodeId @test_module.at0085 if @test_module.at0085.present?
            json.itemMemo @test_module.at0082 if @test_module.at0082.present?
          end if @test_module.at0082.present?
          json.itemMemoF @test_module.at0086 if @test_module.at0086.present?
        end
        json.item do
          json.itemName do
            json.itCode @test_module.at0062 if @test_module.at0062.present?
            json.itCodeId @test_module.at0063 if @test_module.at0063.present?
	    json.Acode @test_module.at0064 if @test_module.at0064.present?
            json.Scode @test_module.at0066 if @test_module.at0066.present?
            json.Mcode @test_module.at0067 if @test_module.at0067.present?
            json.Rcode @test_module.at0068 if @test_module.at0068.present?
            json.itemName @test_module.at0061_4
          end
          json.value @test_module.at0069 if @test_module.at0069.present?
          json.numValue do
            json.up @test_module.at0073 if @test_module.at0073.present?
            json.low @test_module.at0074 if @test_module.at0074.present?
            json.normal @test_module.at0087 if @test_module.at0087.present?
            json.out @test_module.at0088 if @test_module.at0088.present?
            json.numValue @test_module.at0070_4 if @test_module.at0070_4.present?
          end
          json.unit do
            json.uCode @test_module.at0077 if @test_module.at0077.present?
            json.uCodeId @test_module.at0078 if @test_module.at0078.present?
            json.unit @test_module.at0076_4 if @test_module.at0076_4.present?
          end
          json.itemMemo do
            json.imCodeName @test_module.at0083 if @test_module.at0083.present?
            json.imCode @test_module.at0084 if @test_module.at0084.present?
            json.imCodeId @test_module.at0085 if @test_module.at0085.present?
            json.itemMemo @test_module.at0082 if @test_module.at0082.present?
          end if @test_module.at0082.present?
          json.itemMemoF @test_module.at0086 if @test_module.at0086.present?
        end
        json.item do
          json.itemName do
            json.itCode @test_module.at0062 if @test_module.at0062.present?
            json.itCodeId @test_module.at0063 if @test_module.at0063.present?
	    json.Acode @test_module.at0064 if @test_module.at0064.present?
            json.Scode @test_module.at0066 if @test_module.at0066.present?
            json.Mcode @test_module.at0067 if @test_module.at0067.present?
            json.Rcode @test_module.at0068 if @test_module.at0068.present?
            json.itemName @test_module.at0061_5
          end
          json.value @test_module.at0069 if @test_module.at0069.present?
          json.numValue do
            json.up @test_module.at0073 if @test_module.at0073.present?
            json.low @test_module.at0074 if @test_module.at0074.present?
            json.normal @test_module.at0087 if @test_module.at0087.present?
            json.out @test_module.at0088 if @test_module.at0088.present?
            json.numValue @test_module.at0070_5 if @test_module.at0070_5.present?
          end
          json.unit do
            json.uCode @test_module.at0077 if @test_module.at0077.present?
            json.uCodeId @test_module.at0078 if @test_module.at0078.present?
            json.unit @test_module.at0076_5 if @test_module.at0076_5.present?
          end
          json.itemMemo do
            json.imCodeName @test_module.at0083 if @test_module.at0083.present?
            json.imCode @test_module.at0084 if @test_module.at0084.present?
            json.imCodeId @test_module.at0085 if @test_module.at0085.present?
            json.itemMemo @test_module.at0082 if @test_module.at0082.present?
          end if @test_module.at0082.present?
          json.itemMemoF @test_module.at0086 if @test_module.at0086.present?
        end
      end
    end
  end
end
#           xml.mmlLb :itemName, attributes, @test_module.at0061_2
#           xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
#           attributes = Hash.new
#           attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
#           attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
#           attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
#           attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
#           xml.mmlLb :numValue, attributes, @test_module.at0070_2 if @test_module.at0070_2.present?
#           attributes = Hash.new
#           attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077.present?
#           attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
#           xml.mmlLb :unit, attributes, @test_module.at0076_2 if @test_module.at0076_2.present?
#           attributes = Hash.new
#           attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
#           attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
#           attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
#           xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
#           xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
#         end
#         xml.mmlLb :item do
#           attributes = Hash.new
#           attributes['mmlLb:itCode'] = @test_module.at0062 if @test_module.at0062.present?
#           attributes['mmlLb:itCodeId'] = @test_module.at0063 if @test_module.at0063.present?
# 	  attributes['mmlLb:Acode'] = @test_module.at0064 if @test_module.at0064.present?
#           attributes['mmlLb:Icode'] = @test_module.at0065 if @test_module.at0065.present?
#           attributes['mmlLb:Scode'] = @test_module.at0066 if @test_module.at0066.present?
#           attributes['mmlLb:Mcode'] = @test_module.at0067 if @test_module.at0067.present?
#           attributes['mmlLb:Rcode'] = @test_module.at0068 if @test_module.at0068.present?
#           xml.mmlLb :itemName, attributes, @test_module.at0061_3
#           xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
#           attributes = Hash.new
#           attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
#           attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
#           attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
#           attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
#           xml.mmlLb :numValue, attributes, @test_module.at0070_3 if @test_module.at0070_3.present?
#           attributes = Hash.new
#           attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077.present?
#           attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
#           xml.mmlLb :unit, attributes, @test_module.at0076_3 if @test_module.at0076_3.present?
#           attributes = Hash.new
#           attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
#           attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
#           attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
#           xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
#           xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
#         end
#         xml.mmlLb :item do
#           attributes = Hash.new
#           attributes['mmlLb:itCode'] = @test_module.at0062 if @test_module.at0062.present?
#           attributes['mmlLb:itCodeId'] = @test_module.at0063 if @test_module.at0063.present?
# 	  attributes['mmlLb:Acode'] = @test_module.at0064 if @test_module.at0064.present?
#           attributes['mmlLb:Icode'] = @test_module.at0065 if @test_module.at0065.present?
#           attributes['mmlLb:Scode'] = @test_module.at0066 if @test_module.at0066.present?
#           attributes['mmlLb:Mcode'] = @test_module.at0067 if @test_module.at0067.present?
#           attributes['mmlLb:Rcode'] = @test_module.at0068 if @test_module.at0068.present?
#           xml.mmlLb :itemName, attributes, @test_module.at0061_4
#           xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
#           attributes = Hash.new
#           attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
#           attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
#           attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
#           attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
#           xml.mmlLb :numValue, attributes, @test_module.at0070_4 if @test_module.at0070_4.present?
#           attributes = Hash.new
#           attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077.present?
#           attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
#           xml.mmlLb :unit, attributes, @test_module.at0076_4 if @test_module.at0076_4.present?
#           attributes = Hash.new
#           attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
#           attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
#           attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
#           xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
#           xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
#         end
#         xml.mmlLb :item do
#           attributes = Hash.new
#           attributes['mmlLb:itCode'] = @test_module.at0062 if @test_module.at0062.present?
#           attributes['mmlLb:itCodeId'] = @test_module.at0063 if @test_module.at0063.present?
# 	  attributes['mmlLb:Acode'] = @test_module.at0064 if @test_module.at0064.present?
#           attributes['mmlLb:Icode'] = @test_module.at0065 if @test_module.at0065.present?
#           attributes['mmlLb:Scode'] = @test_module.at0066 if @test_module.at0066.present?
#           attributes['mmlLb:Mcode'] = @test_module.at0067 if @test_module.at0067.present?
#           attributes['mmlLb:Rcode'] = @test_module.at0068 if @test_module.at0068.present?
#           xml.mmlLb :itemName, attributes, @test_module.at0061_5
#           xml.mmlLb :value, @test_module.at0069 if @test_module.at0069.present?
#           attributes = Hash.new
#           attributes['mmlLb:up'] = @test_module.at0073 if @test_module.at0073.present?
#           attributes['mmlLb:low'] = @test_module.at0074 if @test_module.at0074.present?
#           attributes['mmlLb:normal'] = @test_module.at0087 if @test_module.at0087.present?
#           attributes['mmlLb:out'] = @test_module.at0088 if @test_module.at0088.present?
#           xml.mmlLb :numValue, attributes, @test_module.at0070_5 if @test_module.at0070_5.present?
#           attributes = Hash.new
#           attributes['mmlLb:uCode'] = @test_module.at0077 if @test_module.at0077.present?
#           attributes['mmlLb:uCodeId'] = @test_module.at0078 if @test_module.at0078.present?
#           xml.mmlLb :unit, attributes, @test_module.at0076_5 if @test_module.at0076_5.present?
#           attributes = Hash.new
#           attributes['mmlLb:imCodeName'] = @test_module.at0083 if @test_module.at0083.present?
#           attributes['mmlLb:imCode'] = @test_module.at0084 if @test_module.at0084.present?
#           attributes['mmlLb:imCodeId'] = @test_module.at0085 if @test_module.at0085.present?
#           xml.mmlLb :itemMemo, attributes, @test_module.at0082 if @test_module.at0082.present?
#           xml.mmlLb :itemMemoF, @test_module.at0086 if @test_module.at0086.present?
#         end
#       end
#     end
#   end
# end
