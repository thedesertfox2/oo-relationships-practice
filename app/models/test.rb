require_relative "./guest.rb"
require_relative "./listing.rb"
require_relative "./trip.rb"

bob = Guest.new("Bob")
tim = Guest.new("Tim")

nyc = Listing.new("NYC")
potato = Listing.new("Idaho")



a1 = Trip.new(bob, nyc)

a2 = Trip.new(bob, potato)

a3 = Trip.new(tim, potato)




#pp Guest.all
#pp Listing.all



 #pp tim.trips

 #pp nyc.trips

#  pp tim.trip_count

#  pp nyc.trip_count

