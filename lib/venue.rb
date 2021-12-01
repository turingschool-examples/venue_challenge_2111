#require 'pry'
class Venue
  attr_reader :name, :capacity, :patrons, :capitalized_patrons

  def initialize(name, capacity)
    #binding.pry
    @name                = name
    @capacity            = capacity
    @patrons             = []
    @capitalized_patrons = []
  end

  def add_patron(patron)
    #binding.pry
    @patrons << patron
  end

  def yell_at_patrons
  #binding.pry
    patrons.each do |patron|
      @capitalized_patrons << patron.upcase
    end
  end

  def over_capacity?
    patron_counter = patrons.length
    if patron_counter > capacity
      return true
    else
      return false
    end
  end
end
