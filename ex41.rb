# https://learnrubythehardway.org/book/ex41.html

=begin

Word Drills

1. class: Tell Ruby to make a new type of thing.
2. object: the most basic type of thing, and any instance of some thing.
3. instance: What you get when you tell Ruby to create a class.
4. def: How you define a function inside a class.
5. @: Inside the functions in a class, @ is a variable for the instance/object being accessed.
6. inheritance: The concept that one class can inherit traits from another class, much like you and your parents.
7. composition: The concept that a class can be composed of other classes as parts, much like how a car has wheels.
8. attribute: A property classes have that are from composition and are usually variables.
9. is-a: A phrase to say that something inherits from another, as in a "salmon" is-a "fish."
10. has-a: A phrase to say that something is composed of other things or has a trait, as in "a salmon has-a mouth."

Phrase Drills

class X < y
"Make a class named X that is-a Y."

class X: def initialize(J)
"class X has-a initialize that takes a J parameter."

class X: def M(J)
"class X has-a function named M that takes a J parameter."

foo = X.new()
"Set foo to an instance of class X."

foo.M(J)
"From foo, get the M function, and call it with parameter J."

foo.K = Q
"From foo, get the K attribute, and set it to Q."

### TODO: EXERCISE:
Run oop_test to study the above.
1. Run with 'ruby oop_test.rb'
2. Then run with 'ruby oop_test.rb english' to drill the reverse operation

=end 