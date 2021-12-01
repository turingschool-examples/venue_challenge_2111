class Venue
 # attr_reader :capacity, :name, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []

  end
end
