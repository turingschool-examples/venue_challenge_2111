class Venue
  attr_reader :patrons, :yell_at_patrons
  def initialize(name, capacity)
    @name     = name
    @capacity = 4
    @patrons  = []
    @yell_at_patrons = []
  end

  def name
    @name
  end

  def capacity
    @capacity
  end

  def add_patron(patron)
    @patrons << patron
  end

  def add_patrons(patrons)
   @yell_at_patrons.upcase << patrons
  end

end
