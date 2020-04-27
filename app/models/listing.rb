class Listing

  attr_reader :name
  @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def guests
        trip = Trip.all.select do |lg|
            lg.listing == self
        end
        trip.map do |lg|
            lg.guest
        end
    end

    def trips
        trip = Trip.all.map do |trip|
            if trip.listing == self
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

    def self.find_all_by_city(city)

    end 
    
    def self.most_popular

    end


end