class Cult
    attr_accessor :location, :slogan
    attr_reader :name, :founding_year
    @@all = []
    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end
    def self.all
        @@all
    end 
    def recruit_follower(follower)
        BloodOath.new(follower, self)
    end
    def cult_population
       how_many = BloodOath.all.select do |people|
            people.cult == self
       end
       how_many.length    
    end
    def self.find_by_name(name) 
        self.all.find do |cult|
            cult.name == name
        end    
    end    
    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end    
    end
    def self.find_by_founding_year(year)
        self.all.select do |cult|
            cult.founding_year == year
        end    
    end                         
end
