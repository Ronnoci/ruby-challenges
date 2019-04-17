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
    number = number.chars
    interesting = true
    (0..9).each do |number|
        if number < 3
            interesting = false
        else
            return interesting
        end        
    end
    return interesting
    
end


puts interesting_number(789)
puts interesting_number(321)
puts interesting_number(798)
puts interesting_number(6) 
puts interesting_number(23) 


# input = input.chars
# duplicates = true
# input.each do | x |
#     if input.count(x) > 1
#         duplicates = false
#     end
# end
# return duplicates
# end