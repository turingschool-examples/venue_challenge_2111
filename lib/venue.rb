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
    @patrons.map do |name|
      name.upcase
    end
  end

  def over_capacity?
    if @patrons.size > 4
      true
    else
      false
    end
  end
end
