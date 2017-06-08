class CashRegister
  def initialize(emp_discount=false)
    @total = 0
    @emp_discount = emp_discount
    @item_array = []
  end
  def discount
    if @emp_discount
      @discount = 20
    end
  end
  def total
    @total
  end
  def total=(total)
    @total = total
  end
  def add_item(item_name, price, item_total=1)
    @transaction_price = price * item_total
    @item_name = item_name
    @total += @transaction_price
    item_total.times do
      @item_array << @item_name
    end
  end
  def apply_discount
    if @emp_discount
      @total *= 0.8
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  def items
    @item_array
  end
  def void_last_transaction
    @total -= @transaction_price
  end
end
