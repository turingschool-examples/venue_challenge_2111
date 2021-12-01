class Venue

  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(person)
    @patrons.push person
  end

  def yell_at_patrons
    @patrons.map {|patron| patron.upcase}
  end
end
