class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    yell_at_patrons = []
    @patrons.each do |person|
      yell_at_patrons << person.upcase
    end

    return yell_at_patrons

  end

end
