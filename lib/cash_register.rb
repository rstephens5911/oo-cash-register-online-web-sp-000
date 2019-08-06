class CashRegister
  attr_accessor :total, :discount, :items


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    @price = price
    @total = @total + (price * quantity)
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
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

  def void_last_transaction
    @total = @total - @price
    @items.pop
    if @items.length == 0
      @total.to_f = 0.0
    end
  end

end
