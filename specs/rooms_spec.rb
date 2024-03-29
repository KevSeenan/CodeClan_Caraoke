require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('../songs.rb')

class TestRooms < Minitest::Test

  def setup()

    @guest1 = Guests.new("Jonny Cash", 20.30, 22.30)
    @guest2 = Guests.new("Willie Nelson", 20.30, 22.30)
    @guest3 = Guests.new("Waylon Jennings", 20.30, 22.30)
    @guest4 = Guests.new("Kris Kristofferson", 20.30, 22.30)
    @guests = [@guest1, @guest2, @guest3, @guest4]

    @song1 = Song.new("Man In Black", "Jonny Cash")
    @song2 = Song.new("On The Road Again", "Willie Nelson")
    @songs = [@song1, @song2]

    @room1 = Rooms.new("RockBlock", 17.30, 19.30, 10)
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

  def test_can_check_guests_into_room()
    @room1.check_guests_into_room(@guest1)
    assert_equal(1, @room1.guest_count())
  end

  def test_can_check_guests_out_of_room()
    checked_out_guest = @room1.check_guest_out_of_room()
    assert_equal(0, @room1.guest_count())
  end

  def test_can_add_songs_to_rooms()
    @room1.add_songs_to_rooms(@song1)
    assert_equal(1, @room1.song_count())
  end

  def test_more_guests_than_room_capacity()
    assert_equal(true, @room1.more_guests_than_room_capacity)
  end

end
