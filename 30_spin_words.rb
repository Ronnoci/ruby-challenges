# Spin words
# Difficulty: medium

# Write a function that takes in a string of one or more words, 
# and returns the same string, but with all five or more letter words 
# reversed. 

# Strings passed in will consist of only letters and spaces. 
# Spaces will be included only when more than one word is present.

# Examples:
# spin_words( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
# spin_words( "This is a test") => returns "This is a test" 
# spin_words( "This is another test" )=> returns "This is rehtona test"

# Tests provided use rspec

def spin_words (words)    
    split_words = words.split
    split_words.map{|x| x.reverse! if x.length > 4 }
    split_words.join(' ')
end

puts spin_words( "Hey fellow warriors" )
puts spin_words( "This is a test")
puts spin_words( "This is another test" )
