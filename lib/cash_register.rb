class CashRegister
  attr_accessor :total
  def initialize(discount = 0.0)
    @total = 0
    @old_total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def discount
    @discount
  end

  def add_item(title,price,quantity=1)
    @old_total = @total
    @total += price * quantity
    for i in (0...quantity)
      @items << title
    end

  end

  def items
    @items
  end

  def apply_discount
    if @discount != 0
      new_total = @total * ((100.00 - @discount)/100.00)
      @total = new_total
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @old_total
  end

end



a = CashRegister.new(20)
puts a.discount
puts a.total
a.add_item("Mac", 1000)
puts a.total
a.apply_discount
puts a.total

