# https://learnrubythehardway.org/book/ex18.html

# this one is like your script with ARGV
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# What does the * in *args do?
# That tells Ruby to take all the arguments to the function and then put them in args as a list. 
# It's like argv that you've been using but for functions. 
# It's not normally used too often unless specifically needed.

# ok, that *args is actually pointless, we can just do this
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# this one takes no arguments
def print_none()
  puts "I got nothin'."
end

print_two("Zed", "Shaw")
print_two_again("G", "W")
print_one("First!")
print_none()