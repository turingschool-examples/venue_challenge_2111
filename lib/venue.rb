class Venue
  # attr_reader :name,
  #             :capacity,
  #             :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def name
    @name
  end

  def patrons
    @patrons
  end
  
  def capacity
    @capacity
  end
end
