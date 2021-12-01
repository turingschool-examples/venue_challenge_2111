class Venue
  attr_reader :name, :capacity, :patrons, :yell_at_patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @over_capacity = false

  end

  def add_patron(patron)
    @patrons << patron
  end

  def over_capacity?
    return false if (@patrons.size <= 4)
    @over_capacity = true
  end
end

# yell_at_patrons = []
# patrons.each do |patron|
#   yell_at_patrons << patron.upcase
