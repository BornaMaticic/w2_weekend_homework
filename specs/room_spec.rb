require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../guest' )
require_relative( '../room' )



class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Autumn", 10, 10)
    @room2 = Room.new("Summer", 20, 15)
    @room3 = Room.new("Spring", 30, 20)

    # @song1 = Song.new("Smells like teen spirit")
    # @song2 = Song.new("Hit me baby one  more time")
    # playlist = [@song1, @song2]
    #
    # @guest1 = Guest.new("Borna", 40)
    # @guest2 = Guest.new("Aiste", 20)

  end

  def test_room_name
    assert_equal("Autumn", @room1.name())
  end


  def test_room_capacity
    assert_equal(20, @room3.room_capacity)
  end

  def test_room_entry_fee
    assert_equal(10, @room1.room_entry_fee)
  end


end
