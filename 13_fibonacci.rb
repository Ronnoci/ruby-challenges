# nthFibonacci

# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.

# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8

# Write a method that will return the nth number of the sequence.

# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.

# Difficulty:
# 6/10

# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8

# Check your solution by running the tests:
# ruby tests/13_fibonacci_test.rb

def nthFibonacci (n)
 
  arr = [0,1,1,]

    if n > 0

    (n-2).times do arr.push(arr[-1] + arr[-2]) end
      return arr[-1]
 
    else
      return 0
  end
end

# def nthFibonacci (n)
#   if n < 2
#     number
#   else
#     fibonacci(n - 1) + fibonacci(n - 2)
#   end
# end