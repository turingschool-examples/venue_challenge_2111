class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @yell = []
    @over_capacity = false
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
   def over_capacity?
     if patrons.length <= capacity
       @over_capacity = false
     else
       @over_capacity = true
     end
   end
end
