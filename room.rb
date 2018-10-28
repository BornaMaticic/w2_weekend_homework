class Room

  attr_reader :name, :entry_fee, :capacity, :songs

  def initialize(name, entry_fee, capacity, songs)
    @name = name
    @entry_fee = entry_fee
    @capacity = capacity
    @songs = songs
  end

  def room_capacity
    @capacity = capacity
  end


  def room_entry_fee
    @entry_fee
  end

  def check_in_guest_in_room
    room = [@room1]
    room << @guest1
    return "Borna has joined Room1."
  end

  def check_out_guest_from_room
    check_in_guest_in_room.clear
    return "Borna has left Room1."
  end

  def number_of_guests_higher_than_room_capacity
    guests = [@guest1, @guest2, @guest3]
    if @capacity.to_i < guests.count
      p "No more space in the room."
    end
  end


end
