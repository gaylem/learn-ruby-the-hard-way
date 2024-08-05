# https://learnrubythehardway.org/book/ex17.html

# from_file, to_file = ARGV

# indata = File.read(from_file)

# puts "The input file is #{indata.length} bytes long"

# puts "Does the output file exist? #{File.exist?(to_file)}"
# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# $stdin.gets

# # Open the output file in write mode and write the contents of indata
# out_file = File.open(to_file, 'w')
# out_file.write(indata)

# puts "Alright, all done."

# # Close both input and output files
# # You don't need to close in_file explicitly because File.read handles the opening and closing of from_file internally.
# out_file.close

###################################
# Simplified version

# from_file, to_file = ARGV

# indata = File.read(from_file)

# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# $stdin.gets

# File.write(to_file, indata)

# puts "Done."

###################################
# One-Liner

File.write(ARGV[1], File.read(ARGV[0])); puts "Done."
