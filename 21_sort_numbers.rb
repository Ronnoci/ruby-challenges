# Sorting algorithms are a key tool in programming.
#
# Write an algorithm that will sort an array of numbers 
# in ascending order. 
# Do not use the .sort method - the idea is that you write
# your own sort method.
# 
# Use hand simulation or pythontutor.com to determine how
# many times your solution visits each element of the array
# in a worse case scenario. If your array has 10 elements for example,
# in a worse case situation does your algorithm examine each element
# once? Twice? More? Less?
# 
# This will help you begin to understand order of complexity
# of algorithms.
#
# Optional:
# Look up explanations of common sorting algoithms
# like bubble sort and quick sort. Don't look up code, just look up the 
# explanations and see if you can implement one of those. 
# Which one is your favourite and why?
#
# Example input: [2,5,4,8,2]
# Expected output: [2,2,4,5,8]

# def sort(num_array)
#     input.length .times do
#     input.to_s.chars
#     index = 0
#     iterate through
#     index0, index 0+1 = i0+1, i0

def sort(num_array)
    num_array.length.times do
        index = 0
        num_array.length.times do
            (num_array[index], num_array[index + 1] = num_array[index + 1], num_array[index] ) if num_array[index] > num_array[index + 1]       
        (index += 1) if (index < num_array.length - 2)
    end
end
    return num_array
end


# def sort(num_array)
 
#     # Outer loop goes until array is sorted - we don't
#     # have to perform any switches
#     switched = true
#     while switched == true do
#         # Set switched to false - if we have to 
#         # switch two numbers, we will set it back to true
#         switched = false
#         # For each number, compare it to the following number
#         # if it is greater, switch it
#         num_array.each_index do |i|
#             if i < num_array.length-1 and num_array[i] > num_array [i+1]
#                 switched = true
#                 temp=num_array[i]
#                 num_array[i] = num_array[i+1]
#                 num_array[i+1] = temp
#             end
#         end
#     end
#     # return the sorted array
#     return num_array
# end

# puts sort [3,2,1]

