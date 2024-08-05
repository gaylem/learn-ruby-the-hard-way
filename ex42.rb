# https://learnrubythehardway.org/book/ex42.html

require 'pp'

class Animal
  # Type is mammal, reptile, bird, etc.
  def initialize(type)
    @type = type
  end
  attr_accessor :type 
end 

class Dog < Animal
  def initialize(name, type = "mammal")
    super(type)
    @name = name
  end 
  attr_accessor :name
end 

class Cat < Animal
  def initialize(name, type = "mammal")
    super(type)
    @name = name
  end
  def print_name
    puts @name 
  end
  attr_accessor :name
end

class Person
  def initialize(name)
    @name = name
    @pet = nil
  end 
  # attr_accessor stands for "attribute accessor".
  # It is a Ruby method used to define getter and setter methods for instance variables in a class.
  attr_accessor :pet 
end 

class Employee < Person
  def initialize(name, salary)
    super(name)
    @salary = salary
  end 
end 

=begin
attr_accessor :name creates name (getter method) and name= (setter method) for the instance variable @name.

person.name retrieves the value of @name.

person.name = "Bob" sets the value of @name to "Bob".
=end 

class Fish < Animal
  def initialize(name, type = "vertebrate")
    super(type)
    @name = name
  end
  attr_accessor :name
  attr_accessor :type 
end 

class Salmon < Fish
  def initialize(name, type = "vertebrate")
    super(name, type)
  end
  attr_accessor :name
  attr_accessor :type 
end 

class Halibut < Fish
  def initialize(name, type = "vertebrate")
    super(name, type)
  end
  attr_accessor :name
  attr_accessor :type 
end

rover = Dog.new("Rover")
# instance_variable_get(:@name) is a Ruby method that retrieves the value of @name directly.
puts "Rover's name: #{rover.instance_variable_get(:@name)}"

satan = Cat.new("Satan")
puts satan.type
mary = Person.new("Mary")
mary.pet = satan
mary.pet.print_name
puts satan.name
pp mary
frank = Employee.new("Frank", 120000)
frank.pet = rover
pp frank
flipper = Fish.new("Flipper")
puts flipper.name
crouse = Salmon.new("Crouse")
puts crouse.type
harry = Halibut.new("Harry")
puts harry.name 

