# https://learnrubythehardway.org/book/ex44.html

=begin
There are three ways that the parent and child classes can interact:

1. Actions on the child imply an action on the parent.
2. Actions on the child override the action on the parent.
3. Actions on the child alter the action on the parent.

NOTE: Most uses of inheritance can be simplified or replaced with composition

=end

# Implicit Inheritance

# class Parent
#   def implicit()
#     puts "PARENT implicit()"
#   end
# end 


# class Child < Parent
# end 

# dad = Parent.new()
# son = Child.new()
# dad.implicit() # PARENT implicit()
# son.implicit() # PARENT implicit()

# Override Explicitly

# Sometimes you want the child to behave differently. In this case you want to override the function in the child, effectively replacing the functionality. To do this just define a function with the same name in Child.

# class Parent
#   def override()
#     puts "PARENT override()"
#   end
# end

# class Child < Parent
#   def override()
#     puts "CHILD override()"
#   end
# end

# dad = Parent.new()
# son = Child.new()
# dad.override() # PARENT override()
# son.override() # CHILD override()

#  Alter before or after

# The third way to use inheritance is a special case of overriding where you want to alter the behavior before or after the Parent class's version runs. You first override the function just like in the last example, but then you use a Ruby built-in function named super to get the Parent version to call. 

# class Parent
#   def altered()
#     puts "PARENT altered()"
#   end
# end

# class Child < Parent
#   def altered()
#     puts "CHILD, BEFORE PARENT altered()"
#     super()
#     puts "CHILD, AFTER PARENT altered()"
#   end
# end

# dad = Parent.new()
# son = Child.new()

# dad.altered()
# son.altered()

# Prints:
# PARENT altered()
# CHILD, BEFORE PARENT altered()
# PARENT altered()
# CHILD, AFTER PARENT altered()

=begin

The important lines here are 64-66, where in the Child I do the following when son.altered() is called:

1. Because I've overridden Parent.altered the Child.altered version runs, and line 9 executes like you'd expect.

2. In this case I want to do a before and after, so after line 9 I want to use super to get the Parent.altered version.

3. On line 10 I call super(), which is aware of inheritance and will get the Parent class for you.

4. At this point, the Parent.altered version of the function runs, and that prints out the Parent message.

5. Finally, this returns from the Parent.altered, and the Child.altered function continues to print out the after message.

=end

# Using super() with initialize

# The most common use of super() is actually in initialize functions in base classes. This is usually the only place where you need to do some things in a child, then complete the initialization in the parent. Here's a quick example of doing that in the Child from these examples:

# class Child < Parent
#     def initialize(stuff)
#         @stuff = stuff
#         super()
#     end
# end

# This is the same as the Child.altered example above, except I'm setting some variables in the initialize before having the Parent initialize with its Parent.initialize.

# Composition 

# Inheritance is useful, but another way to do the exact same thing is just to use other classes and modules, rather than rely on implicit inheritance. If you look at the three ways to exploit inheritance, two of the three involve writing new code to replace or alter functionality. This can easily be replicated by just calling functions in a module. Here's an example of doing this:

# class Other
#   def override()
#     puts "OTHER override()"
#   end

#   def implicit()
#     puts "OTHER implicit()"
#   end 

#   def altered()
#     puts "Other altered()"
#   end 
# end 

# class Child
#   def initialize()
#     @other = Other.new()
#   end 

#   def implicit()
#     @other.implicit()
#   end 

#   def override()
#     puts "CHILD override()"
#   end

#   def altered()
#     puts "CHILD, BEFORE OTHER altered()"
#     @other.altered()
#     puts "CHILD, AFTER OTHER altered()"
#   end
# end 

# son = Child.new()
# son.implicit()
# son.override()
# son.altered()

# Prints:
# OTHER implicit()
# CHILD override()
# CHILD, BEFORE OTHER altered()
# OTHER altered()
# CHILD, AFTER OTHER altered()

# Modules and Mixins

module Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  # Mixin
  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child

  # Mixin
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    # Mixin
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

=begin

When to Use Inheritance or Composition

You don't want to have duplicated code all over your software, since that's not clean and efficient. Inheritance solves this problem by creating a mechanism for you to have implied features in base classes. Composition solves this by giving you modules and the capability to call functions in other classes.

- Use composition to package up code into modules that are used in many different unrelated places and situations.

- Use inheritance only when there are clearly related reusable pieces of code that fit under a single common concept or if you have to because of something you're using.

# Ruby Style Guide

# https://github.com/rubocop/ruby-style-guide 