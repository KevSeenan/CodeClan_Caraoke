require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class TestGuests < Minitest::Test

  def setup()
    @guest1 = Guests.new("Kev Seenan", 18.30)
  end

  def test_guest_has_a_name()
    assert_equal("Kev Seenan", @guest1.name)
  end

  def test_guest_has_a_booking()
    assert_equal(18.30, @guest1.booking)
  end

end
