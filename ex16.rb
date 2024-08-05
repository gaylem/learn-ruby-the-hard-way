# https://learnrubythehardway.org/book/ex16.html

# close -- Closes the file. Like File->Save.. in your editor.
# read -- Reads the contents of the file. You can assign the result to a variable.
# readline -- Reads just one line of a text file.
# truncate -- Empties the file. Watch out if you care about the file.
# write('stuff') -- Writes "stuff" to the file.
# seek(0) -- Move the read/write location to the beginning of the file.

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening File..."
# Opens file in write mode ('w'). This will create the file if it doesn't exist, or truncate it if it does exist.
target = open(filename, 'w')
puts "Truncating the file. Goodbye!"
# target.truncate(0) clears the contents of the file (truncate(0) means truncate to zero bytes).
# But it isn't needed since we are opening in write mode.
# target.truncate(0) 

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write thesee to the file."

target.write("#{line1}\n#{line2}\n#{line3}\n")

puts "And finally, we close it."
# This step is important to ensure that all changes are saved properly and resources are released.
target.close

=begin
Open method modes:

Mode |  Meaning
-----+--------------------------------------------------------
"r"  |  Read-only, starts at beginning of file  (default mode).
-----+--------------------------------------------------------
"r+" |  Read-write, starts at beginning of file.
-----+--------------------------------------------------------
"w"  |  Write-only, truncates existing file
     |  to zero length or creates a new file for writing.
-----+--------------------------------------------------------
"w+" |  Read-write, truncates existing file to zero length
     |  or creates a new file for reading and writing.
-----+--------------------------------------------------------
"a"  |  Write-only, starts at end of file if file exists,
     |  otherwise creates a new file for writing.
-----+--------------------------------------------------------
"a+" |  Read-write, starts at end of file if file exists,
     |  otherwise creates a new file for reading and
     |  writing.
-----+--------------------------------------------------------
"b"  |  Binary file mode (may appear with
     |  any of the key letters listed above).
     |  Suppresses EOL <-> CRLF conversion on Windows. And
     |  sets external encoding to ASCII-8BIT unless explicitly
     |  specified.
-----+--------------------------------------------------------
"t"  |  Text file mode (may appear with
     |  any of the key letters listed above except "b").

What modifiers to the file modes can I use?
The most important one to know for now is the + modifier, so you can do 'w+', 'r+', and 'a+'. 
This will open the file in both read and write mode and, depending on the character use, position the file in different ways.

Does just doing open(filename) open it in 'r' (read) mode?
Yes, that's the default for the open() function.

==end 