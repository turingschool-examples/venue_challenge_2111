class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @crowd = 0
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

  def over_capacity?
    crowd = @patrons.length
    if crowd < capacity
      return false
    elsif crowd > capacity
      return true
    end
  end

  def kick_out()
    crowd = @patrons.length
    if crowd < capacity

    elsif crowd > capacity
      @patrons.shift
      @patrons.shift 
    end
  end
end
