class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @yell = []
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    patrons.map {|name| name.upcase}
  end

  def over_capacity?
    @patrons.count > @capacity
  end

  def kick_out
   while over_capacity?
      @patrons.pop
    end
 end
end
