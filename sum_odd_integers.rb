# Write a program that receives any amount of numbers from a user separated by spaces.
# The program should then print the sum of the odd numbers.  

# For example, if the user were to enter "9 5 4" 
# the program should only sum the "9" and the "5", because those are odd numbers, and print a sum of 14.  

# The excepted output would be similar to this below: 

# Enter at least 2 numbers separated by spaces: 
# 3 7 5 8 1 
# 16

p "Enter at least 2 numbers, separated by spaces:"

numbers = gets.chomp.split
odd_array = Array.new

numbers.each do |odds|
    if odds.to_i.odd? 
        odd_array.push(odds.to_i)
    end
end
    p odd_array.sum

