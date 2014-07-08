class Prescription < Composition
  def orders
    self.content_items.where("path like ?", "[openEHR-EHR-COMPOSITION.medication_list.v1]/content[openEHR-EHR-INSTRUCTION.medication_order.v1]/activities[at0001][%]")
  end
end
