require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../guest' )
require_relative( '../room' )


class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Borna", 20)
    @room = Room.new("Autumn", 10, 10, "Crawling")
    @room2 = Room.new("Summer", 30, 10, "Bye,bye,bye")
  end

  def test_guest_name
    assert_equal("Borna", @guest.name())
  end


  def test_guest_balance
    assert_equal(20, @guest.balance)
  end

  def test_guest_can_afford_entry_fee
    expected = true
    actual = @guest.balance.to_i >= @entry_fee.to_i
    assert_equal(expected, actual)
  end

  def test_pay_entry_fee_has_enough_money
    expected = 10
    actual = @guest.balance - @room.room_entry_fee
    assert_equal(expected, actual)
  end

  def test_no_balance_for_entry_fee
    expected = "No funds."
    actual = @guest.no_balance_for_entry_fee
    assert_equal(expected, actual)
  end


end
