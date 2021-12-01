class Venue
  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def patrons
    @patrons
  end

  def add_patron(string)
    @patrons << string
  end

  def yell_at_patrons
    patrons.map(&:upcase)
  end

  def over_capacity?
    count = patrons.count
    if count > capacity
      return false
    else
      return true
    end
  end
end
