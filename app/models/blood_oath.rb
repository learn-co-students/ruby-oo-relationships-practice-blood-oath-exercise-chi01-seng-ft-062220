class BloodOath
    attr_accessor :follower, :cult, :initiation_date  
    @@all = []
    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
        @@all << self
    end    
    def self.all
        @@all
    end     
end