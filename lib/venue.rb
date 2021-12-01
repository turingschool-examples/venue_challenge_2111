class Venue
 attr_reader :capacity, :name, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end
  #
  # def name
  #   @name
  # end
  #
  # def capacity
  #   @capacity
  # end
  #
  # def patrons
  #   @patrons
  # end

  def add_patron(patron)
    @patrons.push(patron)
  end

  def yell_at_patrons
      @patrons.map(&:upcase)
  end
end
