class Room

  attr_reader :name, :entry_fee, :capacity

  def initialize(name, entry_fee, capacity)
    @name = name
    @entry_fee = entry_fee
    @capacity = capacity
  end

  def room_capacity
    @capacity = capacity
  end


  def room_entry_fee
    @entry_fee
  end

end
