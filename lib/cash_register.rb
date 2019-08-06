class CashRegister
  attr_accessor :total, :discount, :items, :price


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = @total
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
    if @items = []
      @total = 0
    else
      @total = @total - @last_transaction
    end
  end

end
