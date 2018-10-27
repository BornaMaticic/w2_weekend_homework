class Guest

  attr_reader :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def guest_balance
    @balance = balance
  end


  def guest_pay_entry_fee_has_enough_money
    @balance - @entry_fee
  end
end
