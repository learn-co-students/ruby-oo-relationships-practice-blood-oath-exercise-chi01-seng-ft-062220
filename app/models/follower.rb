class Follower
    attr_accessor :name, :age, :life_motto
    @@all = [] 
    def initialize(name, age, life_motto = nil)
        @name = name 
        @age = age 
        @life_motto = life_motto
        @@all << self  
    end
    def self.all
        @@all
    end  
    def join_cult(date, cult)
        BloodOath.new(self, date, cult)
    end 
    def self.of_a_certain_age(age)
        self.all.select do |people|
            people.age >= age    
        end     
    end    
end