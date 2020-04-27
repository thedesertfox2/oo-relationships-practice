class Ride

    

    attr_reader :passanger, :driver, :distance
    @@all = []
    @@distance = []
    
    def initialize(passanger, driver, distance = 0.0)
        @passanger = passanger
        @driver = driver
        @distance = distance
        @@all << self
        @@distance << distance
    end

    def self.average_distance
        average =  @@distance.inject(0) do |sum, x| 
            sum += x  / @@distance.length.to_f
        end
    end

    def self.all
        @@all
    end

end
