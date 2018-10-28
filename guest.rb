class Guest

  attr_reader :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def guest_balance
    @balance = balance
  end


  def guest_pay_entry_fee
    @balance - @entry_fee
  end

  def no_balance_for_entry_fee
    @balance.to_i < @entry_fee.to_i
    return "No funds."
  end

def guest_favourite_song
  return "Smells like teen spirit"
  end

end
