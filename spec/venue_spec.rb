require 'rspec'
require './lib/venue'


describe Venue do
    before :each do
      @venue = Venue.new('Bluebird', 4)
    end

    it 'is a venue' do

      expect(@venue).to be_a Venue
    end

    it 'can read the name' do
      venue = Venue.new('Bluebird', 4)

      expect(@venue.name).to eq 'Bluebird'
    end

    it 'can read the capacity' do

      expect(@venue.capacity).to eq 4
    end

    it 'has no patrons by default' do

      expect(@venue.patrons).to eq []
    end

  # Iteration 2
    it 'returns a list of patrons' do

      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')

      expect(@venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end

    it 'returns a list of uppercased names' do
      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')

      expect(@venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end

  # Iteration 3
    it 'return false if patrons are under capacity' do

      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')

      expect(@venue.over_capacity?).to eq false
    end

    it 'return true if patrons are over capacity' do
      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')
      @venue.add_patron('James')
      @venue.add_patron('Cat')

      expect(@venue.over_capacity?).to eq true
    end

  # Iteration 4
    it 'remove patrons until at capacity' do
      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')
      @venue.add_patron('James')
      @venue.add_patron('Cat')
      @venue.add_patron('Denny')
      @venue.kick_out

      expect(@venue.over_capacity?).to eq false
    end
end
