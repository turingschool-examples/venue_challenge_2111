class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @yell = []
  end
  def add_patron(name)
    @patrons << name
  end
  def yell_at_patrons
     patrons.each do|name|
       @yell << name.upcase
     end
     return @yell
   end
end
