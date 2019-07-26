require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class TestGuests < Minitest::Test

  def setup()
    @guest1 = Guests.new("Kev Seenan")
  end

  def test_guest_has_a_name()
    assert_equal("Kev Seenan", @guest1.name)
  end

end
