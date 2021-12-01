class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron_name)
    @patrons << patron_name
  end

  def yell_at_patrons
    shouted_patron_names = []
    @patrons.each do |patron|
      shouted_patron_names << patron.upcase
    end
    return shouted_patron_names
  end

  def over_capacity?
    @patrons.length > @capacity ? true : false
  end

  def kick_out
    while over_capacity? == true
      patrons.pop
    end
  end
end
