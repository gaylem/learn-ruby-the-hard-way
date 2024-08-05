# https://learnrubythehardway.org/book/ex40.html

### HASH

mystuff = {'apple' => "I AM APPLES!"}
puts mystuff['apple']

### MODULE

# module MyStuff
#     def MyStuff.apple()
#         puts "I AM APPLES!"
#     end

#     # this is just a variable
#     TANGERINE = "Living reflection of a dream"
# end

# Access in terminal
# require "./mystuff.rb"
# MyStuff.apple()
# puts MyStuff::TANGERINE

### CLASS

class MyStuff
  def initialize()
    @tangerine = "And now a thousand years between"
  end 

  # This line creates a getter method for the instance variable @tangerine.
  # It allows external code to access the value of @tangerine without directly accessing the instance variable itself.
  attr_reader :tangerine

  def apple()
    puts "I AM CLASSY APPLES!"
  end 
end 

# Instantiate an object of the MyStuff class
stuff = MyStuff.new

# Access the tangerine attribute using the attr_reader
puts stuff.tangerine  # Output: And now a thousand years between

# Call the apple method
puts stuff.apple  # Output: I AM CLASSY APPLES!


class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end 

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end 
end 

happy_bday = Song.new(["Happy birthday to you",
           "I don't want to get sued",
           "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
            "With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()