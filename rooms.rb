class Rooms

  attr_reader :name, :check_in, :check_out

  def initialize(name, check_in, check_out)
    @name = name
    @check_in = check_in
    @check_out = check_out
  end

end
