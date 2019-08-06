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

  def discount
    @discount
  end


  def add_item (title, price, quantity = 1)
    @total = @total + (price * quantity)
    @@cash_register[title] = price
  end

  def apply_discount
    @@cash_register.title(price)
  end


end
