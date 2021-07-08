# Suppose that your program has to deal with the object inside the variable 'some_random_input'. If the object is:

# a String: downcase it and print it
# a Time: figure out the day of the week, downcased, and print
# an Integer: figure out whether it's odd or even and print
# a Symbol: downcase it and print it
# nil: print "no object provided"
# true: print "you may pass"
# false: print "you may not pass"
# a Hash: print the list of keys within the Hash, as an Array.

# if statements are one of our most commonly used tools we use as developers for dealing with the unknown!
#   Pull up the chapter if you need a refresher https://chapters.firstdraft.com/chapters/763

# Next, remember that there's a method called `.class` that we can call on any Ruby object
#   to find out what kind of thing it is. We first met it way back in the Integer Chapter,
#   and we used it a lot especially when exploring an API response, which could come back to us in different shapes and sizes.

unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample

p some_random_input

# Write your code below

if some_random_input.class == String
  p some_random_input.downcase

elsif some_random_input.class == Time
  
  p some_random_input.strftime("%A").downcase

elsif some_random_input.class == Integer && some_random_input.odd?
  p "#{some_random_input} is odd"

elsif some_random_input.class == Integer && some_random_input.even?
  p "#{some_random_input} is even"
  
elsif some_random_input.class == Symbol
  p some_random_input.downcase

elsif some_random_input.class == nil
  p "no object provided"

elsif some_random_input == true
  p "you may pass"

elsif some_random_input == false
  p "you may not pass"

else some_random_input == Hash
  p some_random_input.keys

end

