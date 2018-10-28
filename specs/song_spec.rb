require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../guest' )
require_relative( '../room' )
require_relative( '../song' )


class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Smells like teen spirit")
    @song2 = Song.new("Hit me baby one  more time")
     end

  def test_song_title
    assert_equal("Smells like teen spirit", @song1.title())
  end

end
