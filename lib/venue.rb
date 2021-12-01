class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
    yell_at = []
    @patrons.each do |patron|
      yell_at << patron.upcase
    end
    return yell_at
  end

  def over_capacity?
    @patrons.count > @capacity
  end

  def kick_out
    @patrons.each do
      @patrons.pop if @patrons.count > @capacity
    end
  end
end
