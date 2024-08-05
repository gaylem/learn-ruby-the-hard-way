# https://learnrubythehardway.org/book/ex39.html

# create a mapping of state to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end 

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end 

# now do both at the same time 
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end 

puts '-' * 10
# by default ruby says "nil" when something isn't in there
state = states['Texas']

if !state
  puts "Sorry, no Texas."
end 

# default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"

=begin

In Ruby, hashes (Hash data structure) are versatile and widely used for storing and manipulating key-value pairs. Here's a breakdown of what you can do and what you can't do with hashes in Ruby:

What You Can Do:

1. Store Key-Value Pairs: Hashes allow you to store any object as keys and values, including strings, integers, symbols, arrays, or even other hashes.

2. Access Values by Keys:

    person = { "name" => "John", "age" => 30 }
    puts person["name"]  # Output: John

3. Add or Update Key-Value Pairs:

    person["city"] = "New York"
    person["age"] = 31

4. Iterate Over Key-Value Pairs:

    person.each do |key, value|
      puts "#{key}: #{value}"
    end

5. Check for Existence:

    puts person.key?("name")  # Output: true

5. Delete Key-Value Pairs:

    person.delete("age")

6. Merge Hashes:

    additional_info = { "occupation" => "Engineer", "city" => "Chicago" }
    person.merge!(additional_info)

7. Convert to Other Data Structures:

    keys_array = person.keys
    values_array = person.values

What You Can't Do:

1. Duplicate Keys: You cannot have duplicate keys in a hash. If you assign a value to an existing key, it will overwrite the previous value:

    person = { "name" => "John", "name" => "Jane" }
    puts person["name"]  # Output: Jane

2. Preserve Order (Pre-Ruby 1.9): Hashes in older versions of Ruby (< 1.9) do not preserve the order of insertion. Starting from Ruby 1.9, hashes maintain insertion order, but this behavior should not be relied upon in versions prior to 1.9.

3. Access Elements by Index: Unlike arrays, you cannot access hash elements by index, as hashes are unordered collections. You access elements by their keys.

4. Directly Sort a Hash: Hashes themselves do not have a built-in method to sort directly. If you need sorted keys or values, you would convert them to arrays and sort those instead.