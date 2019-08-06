class CashRegister
  attr_accessor :total, :discount


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    @price = price
    @total = @total + (price * quantity)
    @items << item
    @itemsS
  end

  def apply_discount
    if @discount > 0
      @special_price = (@price * @discount)/100
      @total = @total - @special_price
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end



end
