class Venue
  attr_reader :name, :capacity, :patrons
  def initialize(name, capacity)
    @name                = name
    @capacity            = capacity
    @patrons             = []
    @uppercased_patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end


  def yell_at_patrons
    patrons.each do |patrons|
      @uppercased_patrons << patrons.upcase
        @uppercased_patrons
      end

  end
end
