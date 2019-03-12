# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words

def count_words
    array = []
    hash = Hash.new(0)
    input = gets.chomp
    input.downcase!
    array = input.split
    array.each do |word|
        hash[word] += 1
    end
     hash.each do |a,b|
        puts "#{a} #{b}"
    end
end
puts count_words

# def count_words(input)
#         input_ar = input.split("")
#         output = {}
#         input_ar.each do |item|
#         if out_contains_key(output, item)
#             output[item] += 1
#         else
#             output[item] = 1
#         end
#     end
#     return output
# end


# def out_contains_key(output, key)
#     output.each do |k|
#         if k == key 
#             return true
#         end
#     end
#     return false
# end

# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2