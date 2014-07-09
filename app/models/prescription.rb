class Prescription < Composition
  def orders
    self.content_items.where("archetype_id = ?", 'openEHR-EHR-INSTRUCTION.medication_order.v1').map do |order|
      Order.new(order)
    end
  end
end

class Order
  attr_reader :path, :value
  attr_accessor :items

  def initialize(order)
    @path = order.path
    @value = order.txt_value
  end
end
