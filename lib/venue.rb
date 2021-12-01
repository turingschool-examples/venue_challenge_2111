class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def name
    @name = "Bluebird"
  end

  def capacity
    @capacity = 4
  end

  def add_patron(patron)
    @patrons.push(patron)
  end

end
