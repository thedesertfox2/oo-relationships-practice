class Passanger

    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def drivers
        driver = self.rides.map do |dp|
            dp.driver
        end
        driver.uniq           
    end

    def rides
        Ride.all.select do |ride|
            ride.passanger == self
        end
    end

    def total_distance
        self.rides.sum {|dp| dp.distance}
    end

    def self.premium_members
        self.all.select do |passanger|
            passanger.total_distance > 100
        end
    end

    def self.all
        @@all
    end

end