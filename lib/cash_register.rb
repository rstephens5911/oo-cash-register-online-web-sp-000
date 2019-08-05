class CashRegister
  attr_accessor :total

  def initialization(total)
    @total = total
    @total = 0
    employee_discount
  end


end
