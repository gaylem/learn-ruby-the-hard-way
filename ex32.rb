# https://learnrubythehardway.org/book/ex32.html

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditiona lstyle found in other languages
for number in the_count
  puts "This is count #{number}"
end 

# Change the above to a typical .each style loop
the_count.each do |number|
  puts "This is .each count #{number}"
end 

# same as above, but in a more Ruby style
# this and the next one are the preferred way
# Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end 

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax
change.each {|i| puts "I got #{i}"}

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
## .. includes both start and end values
## ... excludes the end value 
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable to the end of the list
  elements << i # same as elements.push(i)
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}"}

=begin

Aren't lists and arrays the same thing?
Depends on the language and the implementation. In classic terms a list is very different from an array because of how they're implemented. In Ruby though they call these arrays. In Python they call them lists. Just call these arrays for now since that's what Ruby calls them.

Creating an Array:
array = [1, 2, 3, 4, 5]

Empty Array:
empty_array = []

Array with a Default Value:
default_array = Array.new(3, "default")
# => ["default", "default", "default"]

Access by Index:
array[0]   # => 1
array[-1]  # => 5 (last element)

Range of Elements:
array[1..3]  # => [2, 3, 4]

First and Last Element:
array.first  # => 1
array.last   # => 5

Adding Elements:
array.push(6)    # => [1, 2, 3, 4, 5, 6]
array << 7       # => [1, 2, 3, 4, 5, 6, 7]
array.unshift(0) # => [0, 1, 2, 3, 4, 5, 6, 7]

Removing Elements:
array.pop       # => 7 (removes and returns last element)
array.shift     # => 0 (removes and returns first element)
array.delete(3) # => 3 (removes specified element)

Iteration:
array.each { |element| puts element }
array.map { |element| element * 2 }

Filtering:
array.select { |element| element.even? }
array.reject { |element| element < 3 }

Checking Array Contents:
array.include?(3)  # => true
array.empty?       # => false

Sorting:
array.sort
array.sort_by { |element| -element }

Concatenation and Joining:
array.concat([8, 9])
array.join(", ")   # => "1, 2, 3, 4, 5, 6, 8, 9"

Size and Length:
array.size   # => 8
array.length # => 8

Conversion:
array.to_set  # Converts array to a set
array.to_h    # Converts array to a hash (assuming pairs of elements)

=end 