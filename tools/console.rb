require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

one = Cult.new("cult1", "Chicago", 2000, "Pizza")
two = Cult.new("cult2", "Milwaukee", 2001, "Cheese")
three = Cult.new("cult3", "Miami", 2002, "Party")

kathleen = Followers.new("kathleen", 27, "math")
sarah = Followers.new("sarah", 26, "science")
sam = Followers.new("sam", 30, "apple")

oath = BloodOath.new(two, "sarah")
oath2 = BloodOath.new(three, "kathleen")
oath3 = BloodOath.new(three, "sam")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits


