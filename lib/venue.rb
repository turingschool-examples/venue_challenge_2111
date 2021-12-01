class Venue
  def initialize(venue, capacity)
    @venue = venue
    @capacity = capacity
    end

  def can_read_the_name(name, capacity)
    @venue.name = bluebird
end

  def can_read_the_capacity(venue, capacity)
    @venue.capacity = 4
  end

  def has_no_patrons_by_default(venue, patrons)
    @venue.patrons = []
end
end
