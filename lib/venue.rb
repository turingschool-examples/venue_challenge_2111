class Venue
attr_reader :name, :capacity, :patrons

def initialize(name, capacity)
  @name = name
  @capacity = capacity
  @patrons = [ ]
  end
end


venue = Venue.new('Bluebird', 4)
