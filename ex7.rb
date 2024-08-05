# https://learnrubythehardway.org/book/ex7.html

# In Ruby the " (double-quote) tells Ruby to replace variables it finds with #{},
# but the ' (single-quote) tells Ruby to leave the string alone and ignore any variables inside it.
# It is called string interpolation in Ruby.
# In Javascript you would use template literals with backticks: `${template_literal}`
# In python you would use string literals: f"My name is {name} and I am {age} years old"

puts "Mary had a little lamb."
puts "Its fleece was white as #{'snow'}."
puts "And everywhere that Mary went."
puts "." * 10

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# Using print and puts like this prints "CheesBurger"
# Changing print to puts prints:
# Cheese
# Burger
# Using print twice prints "CheeseBurger%"
print end1 + end2 + end3 + end4 + end5 + end6
puts end7 + end8 + end9 + end10 + end11 + end12