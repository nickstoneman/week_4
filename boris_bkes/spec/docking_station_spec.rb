require_relative  '../lib/docking_station'
require_relative  '../lib/bike'

describe DockingStation do
  let(:station) { DockingStation.new(:capacity => 20) }
  let(:bike) { Bike.new }
  
  def fill_station(station)
      20.times { station.dock(Bike.new) }
  end

  it 'should be able to accept a bike' do
    # station = DockingStation.new
    bike = Bike.new
    expect(station.bike_count).to eq 0
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end

  it "should release a bike" do
    # station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq 0
  end

  it "should know when it's full" do
    expect(station.full?).not_to be true
    20.times { station.dock(Bike.new) }
    expect(station.full?).to be true
  end

  it "should not accept a bike if it's full" do
      fill_station station
      expect { station.dock(bike) }.to raise_error RuntimeError
  end

end