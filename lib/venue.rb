class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    yell_at_patrons = @patrons.map {|person| person.upcase}
  end

  def over_capacity?
    @patrons.size > @capacity
  end

  def kick_out()
    while over_capacity?
      @patrons.shift
    end
  end
end
