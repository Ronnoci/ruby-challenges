
# A balanced number is the number that the sum of all digits to the left of the middle digit(s) 
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit, 
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits , 
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a 
# number is balanced or not, e.g 413023 is a balanced number because the 
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples


# balancedNum(7) 
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0) 
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591) 
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11) 
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9) 
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983) 
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10) 
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02.

def balanced_num(number)
    
    # Turn the number into an array
    num_arr = number.to_s.split("")


    # The max index for the left side of the number will be
    # length/2 - 1 if the array length is odd, and will be
    # length/2 - 2 if the array length is even 
    # (because there will be two middle elements)
    if (num_arr.length % 2 == 0)
        max_left_ind_subtractor = 2
    else
        max_left_ind_subtractor = 1
    end
    sum_left=0
    sum_right=0
    # sum the left half of the array
    (0..(num_arr.length/2 - max_left_ind_subtractor)).each do |i|
        sum_left += num_arr[i].to_i
    end
    # sum the right half of the array
    ((num_arr.length/2 +1)..(num_arr.length - 1)).each do |i|
        sum_right += num_arr[i].to_i
    end
    # Return "Balanced" if the left and right sums are equal
    # and "Not Balanced" if they are not equal
    sum_left == sum_right ? "Balanced" : "Not Balanced"
end

puts balanced_num(295591) 
puts balanced_num(739664) 
