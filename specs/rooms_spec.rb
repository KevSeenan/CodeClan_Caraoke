require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
# require_relative('../guests.rb')

class TestRooms < Minitest::Test

  def setup()
    @room1 = Rooms.new("RockBlock", 17.30, 19.30)
    # @guest1 = Guests.new("Jonny Cash", 20.30, 22.30)
    # @guest2 = Guests.new("Willie Nelson", 20.30, 22.30)
    # @guest3 = Guests.new("Waylon Jennings", 20.30, 22.30)
    # @guest4 = Guests.new("Kris Kristofferson", 20.30, 22.30)
  end

  def test_room_has_a_name()
    assert_equal("RockBlock", @room1.name)
  end

  def test_check_room_has_a_check_in_time()
    assert_equal(17.30, @room1.check_in)
  end
  
  def test_check_room_has_a_check_out_time()
    assert_equal(19.30, @room1.check_out)
  end

end
