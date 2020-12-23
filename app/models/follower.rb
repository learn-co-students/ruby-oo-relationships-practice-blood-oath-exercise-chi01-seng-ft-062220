class Follower

    attr_accessor :name, :age, :life_motto

    @@all = [ ] 

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end


    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end
    end

    def cults
        bloodoaths = BloodOath.all.select do |bloodoath|
            bloodoath.follower == self
        end
        bloodoath.map do |bloodoath|
            bloodoath.cult
        end
    end

    def join_cult(cult)
        BlooadOath.new(self, cult)
    end


end

    # def self.find_by_name(name)
    #   self.all.find do |follower|
    #      follower.name == name
    #     end
    # end

    # def self.follower_age(age)
    #     self.all.sele do |follower|
    #         follower.age == age
    #     end
    # end
