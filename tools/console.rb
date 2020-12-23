require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

stars_on_stars = Cult.new("Stars on Stars", "Idaho", 1929, "We ARE the light.")
children_of_all = Cult.new("Children of All", "New York", 2020, "It's happening.")
the_cold = Cult.new("The Cold", "Idaho", 1990, "Freezing everywhere.")
lizard_people_of_wyoming = Cult.new("Lizard People of Wyoming", "Wyoming", 1984, "Here to slither.")

james = Follower.new("James", 28, "FOMO but YOLO")
mike = Follower.new("Mike", 19, "Chillin' all the time.")
oscar = Follower.new("Oscar", 60, "Finding my second act.")
martin = Follower.new("Martin", 57, "Who know what's next?")
theo = Follower.new("Theo", 42, "Second lives over second wives.")
karen = Follower.new("Karen", 28, "Live. Laugh. Love. Leave everything behind.")
jane = Follower.new("Jane", 19, "I love jams and jellies.")
miranda = Follower.new("Miranda", 39, "Moving on up.")




new_one = BloodOath.new(theo, the_cold)
new_one = BloodOath.new(theo, stars_on_stars)
new_one = BloodOath.new(james, the_cold)
new_one = BloodOath.new(theo,children_of_all )
new_one = BloodOath.new(james, lizard_people_of_wyoming)
new_one = BloodOath.new(oscar, lizard_people_of_wyoming)
new_one = BloodOath.new(martin, children_of_all)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits