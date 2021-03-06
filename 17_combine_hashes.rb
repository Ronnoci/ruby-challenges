# Combine Hashes

# Write a method which will take two different hashes and will
# return their combined value in a new hash.

# If the hash contains numbers, the numbers for matching keys should
# be added and the sum stored in the combined hash

# If the hash contains strings, the strings for matching keys should
# be concatenated and the result stored in the combined hash

# Example:
# hash1 = { a: 3, b: 5, c: 1}
# hash2 = { a: 5, b: 2, c: 14}
# combine_hashes => { a: 8, b: 7, c: 15 }

# Example: 
# hash1 = {a: "a", b:"b", c:"c"}
# hash2 = {a: "a", b:"b", c:"c"}
# combine_hashes => {a: "aa", b:"bb", c:"cc"}



# Test your solution with ruby tests/17_combine_hashes.rb

def combine_hashes(hash1, hash2)
  hash3 = {}
  hash1.each do |key, value|
    hash3[key] = value
  end
  hash2.each do |key, value|
    if hash3.include? key
      hash3[key] += value
    else
      hash3[key] = value
    end
  end
  return hash3
end

puts combine_hashes({a: 2, b: 3}, {a: 200, b: 3, c: 3})


# def combine_hashes(hash1, hash2)
#   hash3 = {}

# hash3 = hash1.merge(hash2) { |k, x, y| x + y }

# return hash3

# end