require_relative "./ride.rb"
require_relative "./driver.rb"
require_relative "./passanger.rb"

tim = Passanger.new("Timmy")
bob = Passanger.new("Bobby")
alex = Passanger.new("Alexey")
brad = Passanger.new("Braddy")

john = Driver.new("Johnny")
george = Driver.new("Georgie")
paul = Driver.new("Pauly")
ringo = Driver.new("Dingo")

nyc = Ride.new(tim, john, 10.0)
detroit = Ride.new(bob, george, 9001.0)
nyc2 = Ride.new(tim, john, 91.0)


# pp Ride.average_distance

# pp Driver.all

# pp Passnger.all

# pp nyc.passanger

# pp tim.rides

pp Passanger.premium_members
