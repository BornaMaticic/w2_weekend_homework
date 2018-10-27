require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../venue' )
require_relative( '../room' )
require_relative( '../guest' )


class TestVenue < MiniTest::Test

  def setup
    @venue = Venue.new("Karaoke Bar", 10)
  end

  def test_fee_for_room
    assert_equal(10, @venue.fee)
  end
end
