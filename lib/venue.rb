class Venue
  attr_reader :patrons
  def initialize(name, capacity)
    @name     = name
    @capacity = 4
    @patrons  = []
  end

  def name
  @name
  end

  def capacity
  @capacity
  end
end
