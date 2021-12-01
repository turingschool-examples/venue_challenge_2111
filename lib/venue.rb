class Venue
attr_reader :name, :capacity, :patrons

def initialize(name, capacity)
  @name = name
  @capacity = capacity
  @patrons = [ ]
  end

  def add_patron(name)
    @patrons << name
  end

  def yell_at_patrons
  patrons_upcase = patrons.each {|name| name.upcase!}
    end
  end


venue = Venue.new('Bluebird', 4)
