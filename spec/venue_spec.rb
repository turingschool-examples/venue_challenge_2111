require 'rspec'
require './lib/venue'
require 'pry'

describe Venue do
  it 'is a venue' do
    venue = Venue.new('Bluebird', 4)
    expect(venue).to be_a Venue
  end

  it 'can read the name' do
    venue = Venue.new('Bluebird', 4)
    expect(venue.name).to eq 'Bluebird'
  end

  it 'can read the capacity' do
    venue = Venue.new('Bluebird', 4)
    expect(venue.capacity).to eq 4
  end

  it 'has no patrons by default' do
    venue = Venue.new('Bluebird', 4)
    expect(venue.patrons).to eq []
  end

  it 'returns a list of patrons' do
    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    expect(venue.patrons).to eq ['Mike', 'Megan', 'Bob']
  end

  it 'returns a list of uppercased names' do
    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    expect(venue.yell_at_patrons).to eq ['MIKE', 'MEGAN', 'BOB']
  end

  it 'is under capacity' do
    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    #binding.pry
    expect(venue.over_capacity?).to eq(false)
  end

  it 'is over capacity' do
    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    venue.add_patron('James')
    venue.add_patron('Cat')
    expect(venue.over_capacity?).to be(true)
  end

  it 'kicks out patrons' do
    venue = Venue.new('Bluebird', 4)
    venue.add_patron('Mike')
    venue.add_patron('Megan')
    venue.add_patron('Bob')
    venue.add_patron('James')
    venue.add_patron('Cat')
    venue.add_patron('Larry')
    venue.kick_out
    expect(venue.over_capacity?).to be (false)
  end
end
