# https://learnrubythehardway.org/book/ex13.html

first, second, third = ARGV

puts "Your first variable is #{first}"
puts "Your second variable is #{second}"
puts "Your third variable is #{third}"

# Run the program like this (and you must pass three command line arguments):
# ruby ex13.rb first 2nd 3rd

=begin
The ARGV is the "argument variable," a very standard name in programming that you will find used in many other languages. 
This variable holds the arguments you pass to your Ruby script when you run it. 
In the exercises you will get to play with this more and see what happens.

Line 1 "unpacks" ARGV so that, rather than holding all the arguments, 
it gets assigned to three variables you can work with: first, second, and third. 
This may look strange, but "unpack" is probably the best word to describe what it does. 
It just says, "Take whatever is in ARGV, unpack it, and assign it to all of these variables on the left in order."
=end

# Ask the user for another input using $stdin.gets.chomp
puts "Enter something else:"

# gets.chomp can sometimes behave unexpectedly when used with ARGV. 
# Instead, $stdin.gets.chomp ensures that input is taken directly from standard input ($stdin), 
# avoiding conflicts with ARGV and ensuring consistent behavior.
additional_input = $stdin.gets.chomp

puts "Your additional input is: #{additional_input}"

=begin
What's the difference between ARGV and gets.chomp?
The difference has to do with where the user is required to give input. If they give your script inputs on the command line, then you use ARGV. If you want them to input using the keyboard while the script is running, then use gets.chomp.
=end 