class Venue
attr_reader :name, :capacity

  def initialize(venue, capacity)
    @venue = venue
    @capacity = capacity
    @patrons = []
  end
  venue = Venue.new('Bluebird', 4)
end
