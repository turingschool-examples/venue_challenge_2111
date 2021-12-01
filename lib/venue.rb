class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    patrons << patron
  end

  def yell_at_patrons
    patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity?
    return true if patrons.count > 4
    return false if patrons.count <= 4
  end

  def kick_out
    patrons.pop until patrons.count == 4
  end
end
