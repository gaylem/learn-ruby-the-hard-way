# https://learnrubythehardway.org/book/ex33.html

# def while_loop(n, increment)
#   i = 0
#   numbers = []

#   while i <= n
#     puts "At the top i is #{i}"
#     numbers.push(i)

#     i += increment
#     puts "Numbers now: ", numbers
#     puts "At the bottom i is #{i}"
#   end 

#   puts "The numbers: "
#   numbers.each {|num| puts num}
# end 

# while_loop(10, 2)

def for_loop(n, increment)
  numbers = []

  for num in (0..n).step(increment)
    puts "At the top i is #{num}"
    numbers << num
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{num}"
  end 
  
  puts "The numbers: "
  numbers.each {|num| puts num}
end 

for_loop(10, 2)