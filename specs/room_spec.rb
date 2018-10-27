require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../guest' )
require_relative( '../room' )
require_relative( '../song' )



class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("Autumn", 10, 10, "Smells like teen spirit")
    @room2 = Room.new("Summer", 20, 15, "Hit me baby one  more time")


    @song1 = Song.new("Smells like teen spirit")
    @song2 = Song.new("Hit me baby one  more time")
    songs = [@song1, @song2]

    @guest1 = Guest.new("Borna", 20)
    @guest2 = Guest.new("Aiste", 10)

  end

  def test_room_name
    assert_equal("Autumn", @room1.name())
  end


  def test_room_capacity
    assert_equal(15, @room2.room_capacity)
  end

  def test_room_entry_fee
    assert_equal(10, @room1.room_entry_fee)
  end

  def test_room_has_song
    expected = "Smells like teen spirit"
    actual = @room1.songs
    assert_equal(expected, actual)
  end

  def test_check_in_guest_in_room
    expected = "Borna has joined Room1."
    actual = @room1.check_in_guest_in_room
    assert_equal(expected, actual)
  end

  def test_check_out_guest_from_room
    expected = "Borna has left Room1."
    actual = @room1.check_out_guest_from_room
    assert_equal(expected,actual)
  end
  
end
