# Add some code to this program so that it:
#  prints the history of answers given while being pestered whether we're there yet.

# Note: all the recorded answers should be lowercase

p "Are we there yet?"

answer = gets.chomp.downcase
answers = Array.new

while answer != "yes"
  p "Are we there yet?"
  answers.push(answer)

  answer = gets.chomp.downcase
end

answers.push("yes")
p answers
