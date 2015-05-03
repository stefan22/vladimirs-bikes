feature 'member of public accesses bike' do
  scenario 'docking station releases a working bike' do
    docking_station = DockingStation.new
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  scenario 'docking station does not release a bike when there are none available' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'No bikes available'
  end


end
