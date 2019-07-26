class Rooms

  attr_reader :name, :check_in, :check_out

  def initialize(name, check_in, check_out, capacity)
    @name = name
    @check_in = check_in
    @check_out = check_out
    @guests = []
    @songs = []
    @capacity = capacity
  end

  def guest_count()
    return @guests.size()
  end

  def check_guests_into_room(guest_to_add)
    @guests << guest_to_add
  end

  def check_guest_out_of_room()
    return @guests.clear()
  end

  def song_count()
    return @songs.size()
  end

  def add_songs_to_rooms(song_to_add)
    @songs << song_to_add
  end

  def more_guests_than_room_capacity()
    # if number of guests > than room_capacity
    # print "Too many poeple"
    # else print "Enjoy your night folks!"
    if guest_count() > @capacity
        return false
      else
        return true
    end
  end

end
