# https://learnrubythehardway.org/book/ex37.html

=begin

Keywords 

| Keyword   | Description                                          | Example                            |
|-----------|------------------------------------------------------|------------------------------------|
| BEGIN     | Run this block when the script starts.               | `BEGIN { puts "hi" }`              |
| END       | Run this block when the script is done.              | `END { puts "hi" }`                |
| alias     | Create another name for a function.                  | `alias new_name existing_name`     |
| and       | Logical and, but lower priority than `&&`.           | `puts "Hello" and "Goodbye"`       |
| begin     | Start a block, usually for exceptions.               | `begin end`                        |
| break     | Break out of a loop right now.                       | `while true; break; end`           |
| case      | Case style conditional, like an if.                  | `case X; when Y; else; end`        |
| class     | Define a new class.                                  | `class X; end`                     |
| def       | Define a new function.                               | `def X(); end`                     |
| defined?  | Is this class/function/etc. defined already?         | `defined? Class == "constant"`     |
| do        | Create a block that maybe takes a parameter.         | `(0..5).each do |x| puts x end`    |
| else      | Else conditional.                                    | `if X; else; end`                  |
| elsif     | Else if conditional.                                 | `if X; elsif Y; else; end`         |
| end       | Ends blocks, functions, classes, everything.         | `begin end`                        |
| ensure    | Run this code whether an exception happens or not.   | `begin ensure end`                 |
| for       | For loop syntax. The `.each` syntax is preferred.    | `for X in Y; end`                  |
| if        | If conditional.                                      | `if X; end`                        |
| in        | In part of for-loops.                                | `for X in Y; end`                  |
| module    | Define a new module.                                 | `module X; end`                    |
| next      | Skip to the next element of a `.each` iterator.      | `(0..5).each {|y| next }`          |
| not       | Logical not. But use `!` instead.                    | `not true == false`                |
| or        | Logical or.                                          | `puts "Hello" or "Goodbye"`        |
| redo      | Rerun a code block exactly the same.                 | `(0..5).each {|i| redo if i > 2}`  |
| rescue    | Run this code if an exception happens.               | `begin rescue X; end`              |
| retry     | In a rescue clause, says to try the block again.     | `(0..5).each {|i| retry if i > 2}` |
| return    | Returns a value from a function. Mostly optional.    | `return X`                         |
| self      | The current object, class, or module.                | `defined? self == "self"`          |
| super     | The parent class of this class.                      | `super`                            |
| then      | Can be used with `if` optionally.                    | `if true then puts "hi" end`       |
| undef     | Remove a function definition from a class.           | `undef X`                          |
| unless    | Inverse of `if`.                                     | `unless false then puts "not" end` |
| until     | Inverse of `while`, execute block as long as false.  | `until false; end`                 |
| when      | Part of `case` conditionals.                         | `case X; when Y; else; end`        |
| while     | While loop.                                          | `while true; end`                  |
| yield     | Pause and transfer control to the code block.        | `yield`                            |

begin keyword is similar to try/catch in JS:

    begin
      result = 10 / 0  # This will raise a ZeroDivisionError
    rescue ZeroDivisionError => e
      puts "Error: #{e.message}"
    ensure
      puts "Ensuring cleanup tasks..."
    end

case keyword is similar to switch statements in JS:

    score = 85

    case score
    when 90..100
      puts "A"
    when 80..89
      puts "B"
    when 70..79
      puts "C"
    when 60..69
      puts "D"
    else
      puts "F"
    end


Data Types

| Type    | Description                                | Example                    |
|---------|--------------------------------------------|----------------------------|
| true    | True boolean value.                        | true or false == true      |
| false   | False boolean value.                       | false and true == false    |
| nil     | Represents "nothing" or "no value".        | x = nil                    |
| strings | Stores textual information.                | x = "hello"                |
| numbers | Stores integers.                           | i = 100                    |
| floats  | Stores decimals.                           | i = 10.389                 |
| arrays  | Stores a list of things.                   | j = [1,2,3,4]              |
| hashes  | Stores a key=value mapping of things.      | e = {'x' => 1, 'y' => 2}   |


String Escape Sequences 

| Escape | Description      |
|--------|------------------|
| \\     | Backslash        |
| \'     | Single-quote     |
| \"     | Double-quote     |
| \a     | Bell             |
| \b     | Backspace        |
| \f     | Formfeed         |
| \n     | Newline          |
| \r     | Carriage         |
| \t     | Tab              |
| \v     | Vertical tab     |


Operators

| Operator | Description                     | Example                     |
|----------|---------------------------------|-----------------------------|
| +        | Add                             | 2 + 4 == 6                  |
| -        | Subtract                        | 2 - 4 == -2                 |
| *        | Multiply                        | 2 * 4 == 8                  |
| **       | Power of                        | 2 ** 4 == 16                |
| /        | Divide                          | 2 / 4.0 == 0.5              |
| %        | Modulus                         | 2 % 4 == 2                  |
| >        | Greater than                    | 4 > 4 == false              |
| .        | Dot access                      | "1".to_i == 1               |
| ::       | Colon access                    | Module::Class               |
| []       | List brackets                   | [1,2,3,4]                   |
| !        | Not                             | !true == false              |
| <        | Less than                       | 4 < 4 == false              |
| >        | Greater than                    | 4 < 4 == false              |
| >=       | Greater than equal              | 4 >= 4 == true              |
| <=       | Less than equal                 | 4 <= 4 == true              |
| <=>      | Comparison "Spaceship Operator" | 4 <=> 4 == 0                |
| ==       | Equal                           | 4 == 4 == true              |
| ===      | Equality                        | 4 === 4 == true             |
| !=       | Not equal                       | 4 != 4 == false             |
| &&       | Logical and (higher precedence) | true && false == false      |
| ||       | Logical or (higher precedence)  | true || false == true       |
| ..       | Range inclusive                 | (0..3).to_a == [0, 1, 2, 3] |
| ...      | Range non-inclusive             | (0...3).to_a == [0, 1, 2]   |
| @        | Object scope                    | @var ; @@classvar           |
| @@       | Class scope                     | @var ; @@classvar           |
| $        | Global scope                    | $stdin                      |

<=> spaceship operator performs a three-way comparison between two objects, 
returning -1, 0, or 1 depending on whether the first object is less than, equal to, 
or greater than the second object.

== vs === in Ruby vs JS

    Ruby: 
    == checks for equality of values
    === is used for more specific purposes like case equality.

    JavaScript:
    == checks for equality with type coercion
    === checks for strict equality without type coercion.

Ruby's @ and @@:
    Instance Variables (@):
    - Prefixed with a single @.
    - Used to store instance-specific data within objects of a class.
    - Scoped to individual instances of the class.
    
    Class Variables (@@):
    - Prefixed with @@.
    - Used to store data shared among all instances of a class and the class itself.
    - Scoped to the entire class and accessible by all instances of the class.

    Example:

        class Dog
          @@total_count = 0  # @@total_count is a class variable

          def initialize(name)
            @name = name
            @@total_count += 1
          end

          def self.total_count
            @@total_count
          end
        end

        dog1 = Dog.new("Buddy")
        dog2 = Dog.new("Max")

        puts Dog.total_count  # Output: 2

=end 