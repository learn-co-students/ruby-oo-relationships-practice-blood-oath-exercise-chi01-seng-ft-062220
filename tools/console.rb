require_relative '../config/environment.rb'


require 'pry'

def reload
  load 'config/environment.rb'
end


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


adi_da = Cult.new("Dawn Horse Fellowship", "San Francisco", "1972", "Self-contraction and Seventh stage realization") 
gleb_botkin = Cult.new("Church of Aphrodite", " Charlottesville, Virginia", "1938", "the Church believes in a singular female goddess, who is named after the ancient Greek goddess of love, Aphrodite")
jim_jones = Cult.new("Peoples Temple", "Indiana", "1955 ", "us versus them")


follower1= Follower.new("Bailey", "26", "That vegan life tho")
follower2= Follower.new("Kelsey", "28", "I am a smol bean")
follower3= Follower.new("Christian", "30", "Song is life")
follower4= Follower.new("Steve", "42", "Die hard")


blood1 = BloodOath.new(follower1, adi_da)
blood2 = BloodOath.new(follower2, gleb_botkin)
blood3= BloodOath.new(follower3, jim_jones)
blood4= BloodOath.new(follower4, jim_jones)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
