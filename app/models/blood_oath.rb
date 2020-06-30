class BloodOath
    attr_accessor :follower, :cult_name, :initiation_date
    @@all = []

# BloodOath#initiation_date
    # returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
    def initialize(follower, cult_name)
        @follower = follower
        @cult_name = cult_name
        @initiaion_date = "#{Time.now.year} - #{Time.now.month} - #{Time.now.day}"
        @@all << self
    end

# BloodOath.all
    # returns an Array of all the blood oath
    def self.all
        @@all
    end

# BloodOath.first_oath
    # returns the Follower instance for the follower that made the very first blood oath
    def self.first_oath
        self.all.sort_by {|oaths| oaths.initiation_date}.map{|oaths| oaths.follower}.last
    end
end