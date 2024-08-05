# https://learnrubythehardway.org/book/ex5.html

name = 'Zed A. Shaw'
age = 35 # Not a lie in 2009
height = 74 #inches
height_cm = 74 * 2.54
weight = 180 #lbs
weight_kg = 180 * 0.453592
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about #{name}."
puts "He's #{height} inches and #{height_cm} centimeters tall."
puts "He's #{weight} pounds and #{weight_kg} kilograms heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}"
