# There are three parts to this challenge and remember to push your solution.

# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence  that lets us know how you got to class and how long it took
# - Print this complete sentence

time_to_class = "1 hour"
puts "Today it took me #{time_to_class} to get to class via train then bus"


# PART 2:
# You are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# Write a program that asks the customer for their order.
#   if they order a cocktail, add one to the number of cocktails you need to make,
#   if they order a water, add one to the number of waters you need to make,
#   if they order a beer, add one to the number of beers you need to pour

# Print the final drinks order so you know what to make

=begin
order = {"cocktail" => 3, "water" => 2, "beer" => 6}

puts "What would you like to order?"
drink = gets.chomp

if drink == "cocktail"
    order["cocktail"] += 1
elsif drink == "water"
    order["water"] += 1
elsif drink == "beer"
    order["beer"] += 1
end

puts "Cocktail:"
puts order["cocktail"]
puts "Water:"
puts order["water"]
puts "Beer:"
puts order["beer"]

=end    

# Part Three:
# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make

# Print out the total profit for the orders you have

require "colorize"                                      #allows me to make it colourful
order = {"cocktail" => 3, "water" => 2, "beer" => 6}    #hash for the drinks and how many are currently backlogged

class Bar
 
def cust_order    
    puts "What would you like to order?".colorize(:light_blue)
    drink = gets.chomp                                     #Allows cusotmers input 
end

def order_add
case drink
when "cocktail"                                         #Adds 1 drink to whatever customer inputs
    order["cocktail"] += 1                              #
when "water"                                            #
    order["water"] += 1                                 #
when "beer"                                             #
    order["beer"] += 1                                  #
else
    puts "Sorry, we do not have that!"
end

puts "Cocktail:".colorize(:background => :red)          #Displays updated drinks log
puts order["cocktail"]                                  #
puts "Water:".colorize(:background => :red)             #
puts order["water"]                                     #
puts "Beer:".colorize(:background => :red)              #
puts order["beer"]                                      #

drink1 = (22 - 8) * order["cocktail"]                   # Takes cost to buy away from price of drink then times number of drinks
drink2 = (6 - 0.15) * order["water"]                    #
drink3 = (12 - 3) * order["beer"]                       #

total = drink1 + drink2 + drink3                        #Adds all drinks profits together

puts "Total profit of current order:".colorize(:yellow) #Displays total profit
puts "$#{total}".colorize(:green)                                       #

