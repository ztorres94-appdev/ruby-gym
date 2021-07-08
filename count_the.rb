# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

p "Enter a sentence:"

user_words = gets.chomp.split
the_array = Array.new

user_words.each do |zebra|

    if zebra.gsub(/[^a-z0-9\s]/i, "") == "the"
        the_array.push("the")
    end
end
    p "'the' appeared #{the_array.count.to_i} times"
