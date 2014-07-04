xml.instruct!
xml.mml('xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xmlns:xsd' =>"http://www.w3.org/2001/XMLSchema",
        'xmlns' => "http://www.medxml.org/v4") do
  xml.mmlVs:VitalSignModule do
    xml.tag!(%Q{mmlVs:information mmlVs:recordId="#{@composition.id}" mmlVs:recordTime="#{@composition.start_time} "})
    xml.mmlVs:VitalSign do
      @composition.content_items.each do |item|
        xml.mmlVs:item do
          xml.tag!('mmlVs:itemName', item.name)
          xml.tag!('mmlVs:numValue', item.num_value)
        end
      end
    end
  end
end
