class InvoiceEntry
  attr_accessor :quantity
  attr_reader :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # Prevent negative quantifies from being sent
    self.quantity = updated_count if updated_count >= 0
  end
end