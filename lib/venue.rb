class Venue
attr_reader :name, :capacity

def initialize(name, capacity)
  @name = name
  @capacity = capacity
  end
end


venue = Venue.new('Bluebird', 4)
