# Write a method that will take two numbers,
# and return whichever is the largest.


def largest_number(number_1, number_2)

if !number_1.is_a?(Numeric) or !number_2.is_a?(Numeric)
  puts "Not a Number"

  elsif number_1 == number_2
    puts "Same"

    else 
    numbers = [number_1, number_2]

    return numbers.max
  end
end

puts largest_number(100, 50)
puts largest_number(10,20)

def largest_number (number_1, number_2)
    numbs = [Float(number_1), Float(number_2)]
    return numbs.max
  rescue ArgumentErrot
    puts "Non-Numeric Input"
end
puts largest_number(10,20)


# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?

