class CashRegister
  attr_accessor :total, :discount

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

  def total
    @total
  end

  def add_item (title, price, quantity = 1)
    cash_register = {}
    cash_register[title] = price * quantity

    cash_register.each do |p , q|
      @total = @total + (p * q)
end
