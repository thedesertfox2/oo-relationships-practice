class Driver

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def passangers
        passanger = self.rides.map do |dp|
            dp.passanger
        end
        passanger.uniq           
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def self.mileage_cap(distance)
        self.all.select do |dp|
            dp.rides.sum {|ride| ride.distance} > distance 
        end
    end



    def self.all
        @@all
    end

    
end