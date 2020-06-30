class Followers
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end


    def cults
        cult_list = []
        BloodOath.all.each do |oath|
            if oath.follower == self
                cult_list << oath.cult
            end
        end
        cult_list
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end
    end
end