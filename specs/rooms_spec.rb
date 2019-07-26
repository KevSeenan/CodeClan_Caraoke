require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')

class TestRooms < Minitest::Test

  def setup()
    @room1 = Rooms.new("RockBlock")
  end

  def test_room_has_a_name()
    assert_equal("RockBlock", @room1.name)
  end

end
