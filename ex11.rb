# https://learnrubythehardway.org/book/ex11.html
# https://www.rubyguides.com/2019/10/ruby-chomp-gets/

print "What is your name?"
name = gets.chomp
puts "Hello #{name}, nice to meet you!"
print "How old are you?"
age = gets.chomp
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp
puts "So you're #{age} old, #{height} tall and #{weight} heavy"

# The purpose of chomp is to remove the newline character at the end of strings.


