class Cult
attr_reader :name, :location, :founding_year, :slogan

@@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all<< self
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def cult_populations
        population = []
        BloodOath.all.each do |oath|
            if oath.cult == self 
                population << oath.follower
            end
        end
        population.length
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.select do |cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        self.all.select do |cult|
        cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.each do |cult|
            if cult.founding_year == year
                return cult
            end
        end
    end
end
