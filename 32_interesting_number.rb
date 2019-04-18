# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def interesting_number(number)

    return false if number.to_s.length < 3  
     
    arr = number.to_s.chars

    arr[0] < arr[-1] ? arr.sort == arr : arr.sort.reverse == arr 
    
end

puts interesting_number(789)
puts interesting_number(321)
puts interesting_number(798)
puts interesting_number(6) 
puts interesting_number(23) 
puts interesting_number(123456789) 


