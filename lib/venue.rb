class Venue
attr_reader :venue, :capacity, :patron

  def initialize(name, capacity)
    @venue = name
    @capacity = capacity
    @patron = []
  end
  venue = Venue.new('Bluebird', 4)

# defines name method
  def name
    name = @venue
  end

# defines capacity method
  def capacity
    capacity = @capacity
  end

#method to add patrons to array
  def add_patron(patron)
    @patron << patron
  end

  venue.add_patron('Mike')
  venue.add_patron('Megan')
  venue.add_patron('Bob')

  def yell_at_patrons
# need to create accumulator and then use each to iterate through array capitalizing names, then push them into the accumulator, then output accumulator
    puts patron
  end


end
