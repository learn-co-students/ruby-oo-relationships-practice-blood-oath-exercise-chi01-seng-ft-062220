class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age
    @@all = []
    
    # Cult#name
        # returns a String that is the cult's name
    # Cult#location
        # returns a String that is the city where the cult is located
    # Cult#founding_year
        # returns an Integer that is the year the cult was founded
    # Cult#slogan
        # returns a String that is this cult's slogan
    # Cult#minimum_age
        # returns an Integer that is the minimum age required for followers joining this cult
    def initialize(name, location, founding_year, slogan, minimum_age= 21)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        @@all << self
    end
    
# Cult#recruit_follower
    # takes in an argument of a Follower instance and adds them to this cult's list of followers
    
# Cult#recruit_follower
    # takes in an argument of a Follower instance and adds them to this cult's list of followers
    # NOW this is changed such that if the given Follower instance is not of age:
    # do not let them join the cult
    # print out a friendly message informing them that they are too young
    def recruit_follower(follower)
        if follower.age < self.minimum_age
            puts "Unfortunately, you're not of age yet. If we're still around, sign-up on your #{minimum_age}st birthday."
        else
            BloodOath.new(follower, self)
        end
    end
# Cult#cult_population
    # returns an Integer that is the number of followers in this cult
    def cult_population
        BloodOath.all.select {|cult| cult.cult_name == self}.count
    end
# Cult.all
    # returns an Array of all the cults
    def self.all
        @@all
    end

# Cult.find_by_name
    # takes a String argument that is a name and 
    # returns a Cult instance whose name matches that argument
    def self.find_by_name(name)
        self.all.find do |cult|
            cult.name == name
        end
    end
# Cult.find_by_location
    # takes a String argument that is a location and 
    # returns an Array of cults that are in that location
    def self.find_by_location(location)
        self.all.select {|cult| cult.location == location}
    end
# Cult.find_by_founding_year
    # takes an Integer argument that is a year and 
    # returns all of the cults founded in that year
    def self.find_by_founding_year(year)
        self.all.select {|cult| cult.founding_year == year}
    end
# Cult#average_age
    # returns a Float that is the average age of this cult's followers
    def followers
        BloodOath.all.select{|cult| cult.cult_name == self}.map{|members| members.follower}
    end

    def average_age
        # ages = BloodOath.all.select{|cult| cult.cult_name == self}.map{|members| members.follower.age}
        ages = self.followers.map{|follower_info| follower_info.age}
        ages.sum.to_f/ages.count
    end
# Cult#my_followers_mottos
    # prints out all of the mottos for this cult's followers
    def my_followers_mottos
        # BloodOath.all.select{|cult| cult.cult_name == self}.map{|members| p members.follower.life_motto}
        self.followers.map{|follower_info| p follower_info.life_motto}
    end
# Cult.least_popular
    # returns the Cult instance who has the least number of followers :(
    def self.least_popular
        self.all.sort_by {|cult| cult.cult_population}.first
    end
# Cult.most_common_location
    # returns a String that is the location with the most cults
    def self.most_common_location
        all_locations = Cult.all.map {|cult| cult.location}
        unique_locations = all_locations.uniq
        unique_locations.sort_by {|location| all_locations.count(location)}.last
    end
end

