class CashRegister
  attr_accessor :total, :discount
  @@cash_register = {}

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

  def total
    @total
  end

  def add_item (title, price, quantity = 1)
    @total = @total + price
    @@cash_register[title] = price
  end


end
