class Cult

    attr_accessor :name, :location, :founding_year, :slogan

    @@all = [ ]

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
        bloodoaths= BloodOath.all.select do |bloodoath|
            bloodoath.cult == self
        end
        bloodoaths.length
    end

    def followers
        #returns followers of the cult
        blood = BloodOath.all.select do |bloodoath|
            bloodoath.cult == self
        end
        blood.map do |bloodoath|
            bloodoath.follower.name
        end
    end

    def average_age
        ages= self.followers.map do |follower|
            follower.age 
        end
        sum = ages.sum
        total = ages.length

        sum/total.to_f
    end

    def my_followers_mottos
        self.followers.map do |follower|
            follower.life_motto
        end
    end

    def self.least_popular
        self.all.min_by do |cult|
            cult.cult_population
        end
    end


    def self.most_common_location
        top= self.all.max_by do |cult|
            cult.cult_population
        end
        top.last
    end

    def self.most_common_location
        grouped_cults= Cult.all.group_by {|cult| cult.location}
        sorted_cults= grouped_cults.sort_by { |k,v| v.size }.to_h
        keys = sorted_cults.keys
        keys.last
    end

end

