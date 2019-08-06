class CashRegister
  attr_accessor :total, :discount


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@cash_register = {}
  end

  def add_item (title, price, quantity = 1)
    @price = price
    @total = @total + (price * quantity)
    @@cash_register[title] = price
  end

  def apply_discount
    if @discount
      @special_price = (@price * @discount)/100
      @total = @total - @special_price
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

end
