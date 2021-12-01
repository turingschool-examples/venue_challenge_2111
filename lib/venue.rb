class Venue
attr_reader :venue, :capacity

  def initialize(name, capacity)
    @venue = name
    @capacity = capacity
    @patrons = []
  end
  venue = Venue.new('Bluebird', 4)

  def name
    name = @venue
  end
end
