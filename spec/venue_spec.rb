require 'rspec'
require './lib/venue'

describe Venue do
  before :each do
    @venue = Venue.new('Bluebird', 4)
  end

  describe '#initialize' do
    it 'is a venue' do
      expect(@venue).to be_a Venue
    end

    it 'can read the name' do
      expect(@venue.name).to eq 'Bluebird'
    end

    it 'can read the capacity' do
      expect(@venue.capacity).to eq 4
    end

    it 'has no patrons by default' do
      expect(@venue.patrons).to eq []
    end
  end

  # Iteration 2

  describe '#add_patron' do
    it 'returns a list of patrons' do
      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')

      expect(@venue.patrons).to eq ['Mike', 'Megan', 'Bob']
    end
  end

  describe '#yell_at_patrons' do
    it 'returns a list of uppercased names' do
      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')
      expect(@venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
    end
  end

  describe '#over_capacity' do
    it 'will check if a venue is over_capacity and return true or false' do
      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')
      expect(@venue.over_capacity).to eq false
      @venue.add_patron('James')
      @venue.add_patron('Cat')
      expect(@venue.over_capacity).to eq true
    end
  end

  describe '#kick_out' do
    it 'will kick patrons out of a venue till it reaches capacity' do
      @venue.add_patron('Mike')
      @venue.add_patron('Megan')
      @venue.add_patron('Bob')
      @venue.add_patron('James')
      @venue.add_patron('Cat')
      expect(@venue.over_capacity).to eq true
      @venue.kick_out
      expect(@venue.over_capacity).to eq false
    end
  end
end
