# https://learnrubythehardway.org/book/ex8.html

# Formatter is a string that contains placeholders %{first}, %{second}, %{third}, and %{fourth}. 
# These are placeholders that will be replaced by values specified later using the % operator.
formatter = "%{first} %{second} %{third} %{fourth}"

# This line replaces %{first}, %{second}, %{third}, and %{fourth} in the formatter string 
# with the values 1, 2, 3, and 4 respectively. 
# The % operator replaces the placeholders with values from the hash {first: 1, second: 2, third: 3, fourth: 4}.
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}

# This line replaces the placeholders in formatter with the strings "one", "two", "three", and "four".
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}

# This line replaces the placeholders with boolean values true and false.
puts formatter % {first: true, second: false, third: true, fourth: false}

# formatter itself is used as the value for each placeholder. 
# So each %{first}, %{second}, %{third}, and %{fourth} will be replaced with the original formatter string.
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# This final puts statement replaces the placeholders with the specified strings.
puts formatter % {
  first: "I had this thing.",
  second: "That  you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}