# Write a program that
#   asks the user for a secret message
#   and 'encode's the message by replacing vowels with other characters
#   Here is our secret code, don't tell anyone... a = 1, e = 2, i = 3, o = 4, u = 5

# Your program should print the encoded message.

p "Enter in the secret you want to encode"

message = gets.chomp


p message.gsub("a", "1").gsub("A", "1").gsub("e", "2").gsub("E", "2").gsub("i", "3").gsub("I", "3").gsub("o", "4").gsub("O", "4").gsub("u", "5").gsub("U", "5")
