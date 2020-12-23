require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#cult
# name, location, founding_year, slogan
Cult.all
adi_da = Cult.new("Dawn Horse Fellowship", "San Francisco", "1972", "Self-contraction and Seventh stage realization") 
gleb_botkin = Cult.new("Church of Aphrodite", " Charlottesville, Virginia", "1938", "the Church believes in a singular female goddess, who is named after the ancient Greek goddess of love, Aphrodite")
jim_jones = Cult.new("Peoples Temple", "Indiana", "1955", "us versus them")

#follower
#name, age

sara = Follower.new("Sara", "24")
jon = Follower.new("Jon", "30")
joy = Follower.new("Joy", "8")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits