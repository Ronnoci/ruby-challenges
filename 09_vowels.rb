# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def vowels (string)
  vowel = ["a", "e", "i", "o", "u"]
  count = 0
  string.split("").each do |char|
    vowel.each do |item|
      if char == item
        count += 1
      end
    end
  end
end

puts vowels("The quick brown fox") 
puts vowels("Hello World") 
