# Write a program that:
#   Asks the user to enter a sentence
#   Counts the total number of letters in the given sentence
#   Counts the total number of spaces in the given sentence
#   Counts the total numbers of digits in the given sentence
#   and prints the intormation out

# Example:

#  "Enter a sentence:"
#  here 12 plus 25
#  "Number of letters in the string is: 8"
#  "Number of spaces in the string is: 3"
#  "Number of digits in the string is: 4"

p "Enter a sentence:"

sentance = gets.chomp

digits = sentance.gsub(/[^0-9]/, "").split("").count
letters = sentance.gsub(/[^a-z]/i, "").split("").count
space = sentance.split("").count - sentance.gsub(/\s+/, "").split("").count

p "Number of letters in the string is: #{letters}"
p "Number of spaces in the string is: #{space}"
p "Number of digits in the string is: #{digits}"


