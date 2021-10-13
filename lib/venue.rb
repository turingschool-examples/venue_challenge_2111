class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(add)
    @patrons << add
  end

  def yell_at_patrons
    @patrons.map {|p| p.upcase}
  end

  def over_capacity?
    if @patrons.count > @capacity
      true
    else
      false
    end
  end
  def kick_out
    @patrons.shift
  end

end
