class Venue

  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @capitalized_patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    @patrons.each do |patron|
      @capitalized_patrons << patron.upcase
   end
   return @capitalized_patrons
  end

  def over_capacity?
    if @capacity >= @patrons.count
      false
    else
      true
    end
  end

  def kick_out
    if @patrons.count > @capacity
      @patrons.shift
    else
      false
    end
  end

end
