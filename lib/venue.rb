# unsure where/how to place accumulator for capitalized_patrons array
# I got stuck for the last 45 minutes on yell_at_patrons method. bummer.
class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def capacity
    @capacity = @patrons
  end

  def add_patron(patron)
    @patrons.push(patron)
  end

  # capitalized_patrons = []

  # def yell_at_patrons
  #   patrons.each do |patron|
  #     capitalized_patrons << patron.capitalize
  #     return capitalized_patrons
  #   end
  # end

  def over_capacity?
    if @capacity <= 4
      false
    end
  end
end
