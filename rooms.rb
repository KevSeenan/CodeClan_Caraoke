class Rooms

  attr_reader :name, :check_in, :check_out

  def initialize(name, check_in, check_out)
    @name = name
    @check_in = check_in
    @check_out = check_out
    @guests = []
  end

  def guest_count()
    return @guests.size()
  end

  def check_guests_into_room(guest_to_add)
    @guests << guest_to_add
  end

  def check_guest_out_of_room()
    return @guests.pop()
  end

end
