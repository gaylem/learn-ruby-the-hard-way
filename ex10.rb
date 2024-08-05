# https://learnrubythehardway.org/book/ex10.html

tabby_cat = "\tI'm tabbed in"
persian_cat = "I'm split\non a line"
backslash_cat = "I'm \\ a \\ cat"

# Use ''' when you need a multi-line string that contains #{} formatting, but you don't want them to be processed yet or at all. 
# Use """ for all other multi-line strings.
fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

# Escape	            What it does.
# \\	Backslash (\) - Escapes a backslash character itself.
# \'	Single-quote (') - Escapes a single-quote character within a single-quote delimited string.
# \"	Double-quote (") - Escapes a double-quote character within a double-quote delimited string.
# \a	ASCII bell (BEL) - Produces an alert sound or bell.
# \b	ASCII backspace (BS) - Moves the cursor back one character position.
# \f	ASCII formfeed (FF) - Advances the cursor to the next page or form.
# \n	ASCII linefeed (LF) - Moves the cursor to the next line.
# \r	ASCII Carriage Return (CR) - Moves the cursor to the beginning of the line.
# \t	ASCII Horizontal Tab (TAB) -  Inserts a horizontal tab.
# \uxxxx	Character with 16-bit hex value xxxx (Unicode only) - Inserts a Unicode character represented by the hexadecimal number xxxx.
# \v	ASCII vertical tab (VT) - Inserts a vertical tab
# \ooo	Character with octal value ooo - Inserts a character represented by the octal number ooo.
# \xhh	Character with hex value hh - Inserts a character represented by the hexadecimal number hh.