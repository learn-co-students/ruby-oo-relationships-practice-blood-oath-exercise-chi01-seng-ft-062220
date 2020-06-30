class Follower
    attr_accessor :name, :age, :life_motto
    @@all = []

# Follower#name
    # returns a String that is the follower's name
# Follower#age
    # returns an Integer that is the age of the follower
# Follower#life_motto
    # returns a String that is the follower's life motto
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

# Follower#cults
    # returns an Array of this follower's cults
    def cults
        BloodOath.all.select {|groups| groups.follower == self}.map {|cult_info| cult_info.cult_name.name}
    end
    
# Follower#join_cult
    # takes in an argument of a Cult instance and adds this follower to the cult's list of followers
# Follower#join_cult
    # takes in an argument of a Cult instance and adds this follower to the cult's list of followers
    # NOW this is changed such that if you don't meet the minimum age requirement of the given Cult instance:
    # do not let them join the cult
    # print out a friendly message informing them that they are too young
    def join_cult(cult)
        if self.age < cult.minimum_age
            puts "Unfortunately, you're not of age yet. If we're still around, sign-up on your #{cult.minimum_age}st birthday."
        else
            BloodOath.new(self, cult)
        end
    end
# Follower.all
    # returns an Array of all the followers
    def self.all
        @@all
    end
# Follower.of_a_certain_age
    # takes an Integer argument that is an age and returns an Array of followers who are the given age or older
    def self.of_a_certain_age(age_to_check)
        self.all.select {|member| member.age >= age_to_check}
    end
# Follower#my_cults_slogans
    # prints out all of the slogans for this follower's cults
    def my_cults_slogans
        BloodOath.all.select {|groups| groups.follower == self}.map {|cult_info| cult_info.cult_name.slogan}
    end
# Follower.most_active
    # returns the Follower instance who has joined the most cults
    def self.user_oaths_count
        all_oaths = BloodOath.all.select {|groups| groups.follower}.map{|info| info.follower.name}
        unique_oaths = all_oaths.uniq
        unique_oaths.sort_by{|oaths| all_oaths.count(oaths)}
    end

    def self.most_active
       self.user_oaths_count.last
    end

# Follower.top_ten
    # returns an Array of followers; they are the ten most active followers
    def self.top_ten
       self.user_oaths_count.pop(3)
    end
# Follower#fellow_cult_members
    # returns a unique Array of followers who are in the same cults as you
    def fellow_cult_members
        BloodOath.all.select {|groups| groups.follower == self}.map{|cults| cults.cult_name}.map{|cults| cults.followers}.flatten.reject{|follower| follower.name == self.name}
    end
end