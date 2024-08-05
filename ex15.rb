# https://learnrubythehardway.org/book/ex15.html

# Stores the argument from the script execution as a variable
filename = ARGV.first

# Stores the command to open the file as a variable
txt = open(filename)

puts "Here's your file #{filename}:"
# Prints out the text of the file
print txt.read
txt.close 

print "Type the filename again: "
# Stores the filename the user typed in as a variable
file_again = $stdin.gets.chomp
# Stores the command to open the file as a variable
txt_again = open(file_again)
# Prints out the text of the file
print txt_again.read
txt_again.close

=begin
Does txt = open(filename) return the contents of the file?
No, it doesn't. It actually makes something called a "file object." You can think of a file like an old tape drive that you saw on mainframe computers in the 1950s or even like a DVD player from today. You can move around inside them and then "read" them, but the DVD player is not the DVD the same way the file object is not the file's contents.

---

Start irb to start the irb shell, and use open from the prompt just like in this program. 
Notice how you can open files and run read on them from within irb?

irb(main):002:0> file = open('ex15_sample.txt')
=> #<File:ex15_sample.txt>
irb(main):003:0> puts file.read
This is stuff I typed into a file.
It is really cool stuff.
Lots and lots of fun to have in here.
=> nil
irb(main):004:0> 

=end 