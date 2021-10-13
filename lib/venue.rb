class Venue

  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity, patrons = [])
    @name = name
    @capacity = capacity
    @patrons = patrons
  end

  def add_patron(name)
    @patrons.push(name)
  end

  def yell_at_patrons
    yelling = []
    patrons.each do |yell|
      yelling << yell.upcase
    end
    yelling
  end

  def over_capacity?
    patrons.length > capacity
  end

  def kick_out
    surplus = patrons.length - capacity
    if surplus > 0
      patrons.pop(surplus)
    else
      return patrons
    end
    patrons
  end

end
