# https://learnrubythehardway.org/book/ex20.html

input_file = ARGV.first 

def print_all(f)
  puts f.read
end

def rewind(f)
  # f.seek(0) moves the file pointer (or cursor) back to the beginning of the file.
  # The code seek(0) moves the file to the 0 byte (first byte) in the file. 
  f.seek(0)
end

def print_a_line(line_count, f)
  # gets moves cursor to next line of file each time it is called 
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)