# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"

user_input = gets.chomp.split
inputs = Array.new

user_input.each do |int|
    inputs.push(int.to_i)
end

if inputs.sum > 21 && inputs.at(0) != 11 && inputs.at(1) != 11
    p 0
elsif inputs.sum > 21 && inputs.at(0) == 11 && inputs.at(1) == 11
    p 12
elsif inputs.sum > 21 && inputs.at(0) != 11 && inputs.at(1) == 11
    p 1 + inputs.at(0)
elsif inputs.sum > 21 && inputs.at(0) == 11 && inputs.at(1) != 11
    p 1 + inputs.at(1)
else inputs.sum < 21
    p inputs.sum
end






