class Guest

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def listings
        trip = Trip.all.select do |lg|
            lg.guest == self
        end
        trip.map do |lg|
            lg.listing
        end
    end

    def trips
        trip = Trip.all.map do |trip|
            if trip.guest == self
                self
            end
        end
        trip.reject do |value| 
            value.nil? || value==0
        end
    end

    def trip_count
        self.trips.length
    end

    def self.all
        @@all
    end

end
