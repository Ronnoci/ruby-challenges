# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#


def included_once (haystack, needle)
  count = 0                               # counter starts at 0
  haystack.each do |item|                 # loops through haystack
    count += 1 if item == needle          # everytime needle is found add 1
  end
  (count > 1 || count == 0) ? (return false) : (return true) #Was the word encountered more than once or not at all? Return false, otherwise return true.
end
     
puts included_once(['hello','hi','hi'], 'hi')
puts included_once(['hello','hi','hey'], 'hi')
