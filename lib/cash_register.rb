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
    @@cash_register.each do |title, price|
      init_price = 0
      init_price = init_price + price
      emp_discount = (init_price * (@discount/100))
      empl_total = init_price - emp_discount
      return empl_total
    end
  end


end
