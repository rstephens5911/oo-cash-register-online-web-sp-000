class CashRegister
  attr_accessor :total

  def initialize(total)
    @total = total
    @total = 0
    employee_discount
  end


end
