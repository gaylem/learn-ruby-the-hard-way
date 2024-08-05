# https://learnrubythehardway.org/book/ex12.html

puts "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

puts "Give me another number: "

another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}" 

puts "Give me one more number: "
input = gets.chomp
float = input.to_f

puts float

puts "Give me some money: "
money = gets.chomp.to_f 
money_back = money * 0.10 
# "%.2f" formats the float (money_back) with 2 decimal places.
puts "%.2f" % money_back