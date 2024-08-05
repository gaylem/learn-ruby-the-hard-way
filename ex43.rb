# https://learnrubythehardway.org/book/ex43.html

=begin

The process for building in Ruby is as follows:

Write or draw about the problem.
- Draw a diagram or map, whatever works 

Extract key concepts from 1 and research them.
- Make a list of all the nouns and verbs in your writing and drawings, then write out how they're related. This gives me a good list of names for classes, objects, and functions in the next step. 

Create a class hierarchy and object map for the concepts.
- Create a simple outline/tree of the concepts and how they are related as classes. You can usually take your list of nouns and start asking "Is this one like other concept nouns? That means they have a common parent class, so what is it called?" Keep doing this until you have a class hierarchy that's just a simple tree list or a diagram. 
- Then take the verbs you have and see if those are function names for each class and put them in your tree.

Code the classes and a test to run them.

Repeat and refine.


# Description of "Gothons from Planet Percal #25"

Aliens have invaded a space ship and our hero has to go through a maze of rooms defeating them so she can escape into an escape pod to the planet below. The game will be more like a Zork or Adventure type game with text outputs and funny ways to die. The game will involve an engine that runs a map full of rooms or scenes. Each room will print its own description when the player enters it and then tell the engine what room to run next out of the map.

# Scenes 

1. Death - This is when the player dies and should be something funny.

2. Central Corridor - This is the starting point and has a Gothon already standing there that the players have to defeat with a joke before continuing.

3. Laser Weapon Armory - This is where the hero gets a neutron bomb to blow up the ship before getting to the escape pod. It has a keypad the hero has to guess the number for.

4. The Bridge - Another battle scene with a Gothon where the hero places the bomb.

5. Escape Pod - Where the hero escapes but only after guessing the right escape pod.


I now have enough information to extract some of the nouns and analyze their class hierarchy. First I make a list of all the nouns:

Alien
Player
Ship
Maze
Room
Scene
Gothon
Escape Pod
Planet
Map
Engine
Death
Central Corridor
Laser Weapon Armory
The Bridge

# Class Hierarchy

* Map
* Engine
* Scene
  * Death
  * Central Corridor
  * Laser Weapon Armory
  * The Bridge
  * Escape Pod

I would then go through and figure out what actions are needed on each thing based on verbs in the description. For example, I know from the description I'm going to need a way to "run" the engine, "get the next scene" from the map, get the "opening scene," and "enter" a scene. I'll add those like this:

* Map
  - next_scene
  - opening_scene
* Engine
  - play
* Scene
  - enter
  * Death
  * Central Corridor
  * Laser Weapon Armory
  * The Bridge
  * Escape Pod

=end 

# Code 

class Scene
  # This is a parent class
  # Child classes will override enter() with different functionality
  def enter()
    puts "This scene is not yet configured."
    # exit(1) terminates program with general error message
    exit(1)
  end 
end 


class Death < Scene
  # @@ is a prefix used before a variable name to define a class variable in Ruby. Class variables are shared among all instances of a class and can also be accessed from within class methods.
  @@quips = [
    "You died.  You kinda suck at this.",
    "Your mom would be proud...if she were smarter.",
    "Such a luser.",
    "I have a small puppy that's better at this."
  ]

  def enter()
    puts @@quips[rand(00..(@@quips.length - 1))]
    exit(1)
  end 
end 


class CentralCorridor < Scene
  def enter()
    puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
    puts "your entire crew.  You are the last surviving member and your last"
    puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
    puts "put it in the bridge, and blow the ship up after getting into an "
    puts "escape pod."
    puts "\n"
    puts "You're running down the central corridor to the Weapons Armory when"
    puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
    puts "flowing around his hate filled body.  He's blocking the door to the"
    puts "Armory and about to pull a weapon to blast you."
    puts "What do you do? Shoot, dodge, or tell a joke?"
    print "> "

    action = $stdin.gets.chomp.downcase

    if action.include?("shoot")
      puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
      puts "His clown costume is flowing and moving around his body, which throws"
      puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
      puts "completely ruins his brand new costume his mother bought him, which"
      puts "makes him fly into an insane rage and blast you repeatedly in the face until"
      puts "you are dead.  Then he eats you."
      return 'death'

    elsif action.include?("dodge")
      puts "Like a world class boxer you dodge, weave, slip and slide right"
      puts "as the Gothon's blaster cranks a laser past your head."
      puts "In the middle of your artful dodge your foot slips and you"
      puts "bang your head on the metal wall and pass out."
      puts "You wake up shortly after only to die as the Gothon stomps on"
      puts "your head and eats you."
      return 'death'

    elsif action.include?("joke")
      puts "Lucky for you they made you learn Gothon insults in the academy."
      puts "You tell the one Gothon joke you know:"
      puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
      puts "While he's laughing you run up and shoot him square in the head"
      puts "putting him down, then jump through the Weapon Armory door."
      return 'laser_weapon_armory'

    else
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end
  end
end


class LaserWeaponArmory < Scene
  def enter()
    puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
    puts "for more Gothons that might be hiding.  It's dead quiet, too quiet."
    puts "You stand up and run to the far side of the room and find the"
    puts "neutron bomb in its container.  There's a keypad lock on the box"
    puts "and you need the code to get the bomb out.  If you get the code"
    puts "wrong 10 times then the lock closes forever and you can't"
    puts "get the bomb.  The code is 3 digits."
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guesses = 0

    while guess != code && guesses < 10
      puts "BZZZZEDDD!"
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    if guess == code
        puts "The container clicks open and the seal breaks, letting gas out."
        puts "You grab the neutron bomb and run as fast as you can to the"
        puts "bridge where you must place it in the right spot."
        return 'the_bridge'
    else
        puts "The lock buzzes one last time and then you hear a sickening"
        puts "melting sound as the mechanism is fused together."
        puts "You decide to sit there, and finally the Gothons blow up the"
        puts "ship from their ship and you die."
        return 'death'
    end
  end
end


class TheBridge < Scene

  def enter()
    puts "You burst onto the Bridge with the netron destruct bomb"
    puts "under your arm and surprise 5 Gothons who are trying to"
    puts "take control of the ship.  Each of them has an even uglier"
    puts "clown costume than the last.  They haven't pulled their"
    puts "weapons out yet, as they see the active bomb under your"
    puts "arm and don't want to set it off."
    puts "What do you do with the bomb? Throw it, or set it down slowly?"
    print "> "

    action = $stdin.gets.chomp

    if action.include?("throw")
      puts "In a panic you throw the bomb at the group of Gothons"
      puts "and make a leap for the door.  Right as you drop it a"
      puts "Gothon shoots you right in the back killing you."
      puts "As you die you see another Gothon frantically try to disarm"
      puts "the bomb. You die knowing they will probably blow up when"
      puts "it goes off."
      return 'death'

    elsif action.include?("slowly")
      puts "You point your blaster at the bomb under your arm"
      puts "and the Gothons put their hands up and start to sweat."
      puts "You inch backward to the door, open it, and then carefully"
      puts "place the bomb on the floor, pointing your blaster at it."
      puts "You then jump back through the door, punch the close button"
      puts "and blast the lock so the Gothons can't get out."
      puts "Now that the bomb is placed you run to the escape pod to"
      puts "get off this tin can."
      return 'escape_pod'
    else
      puts "DOES NOT COMPUTE!"
      return "the_bridge"
    end
  end
end


class EscapePod < Scene

  def enter()
    puts "You rush through the ship desperately trying to make it to"
    puts "the escape pod before the whole ship explodes.  It seems like"
    puts "hardly any Gothons are on the ship, so your run is clear of"
    puts "interference.  You get to the chamber with the escape pods, and"
    puts "now need to pick one to take.  Some of them could be damaged"
    puts "but you don't have time to look.  There's 5 pods, which one"
    puts "do you take?"

    good_pod = rand(1..5)
    print "[pod #]> "
    guess = $stdin.gets.chomp.to_i

    if guess != good_pod
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod escapes out into the void of space, then"
      puts "implodes as the hull ruptures, crushing your body"
      puts "into jam jelly."
      return 'death'
    else
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod easily slides out into space heading to"
      puts "the planet below.  As it flies to the planet, you look"
      puts "back and see your ship implode then explode like a"
      puts "bright star, taking out the Gothon ship at the same"
      puts "time.  You won!"

      return 'finished'
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end


class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end 

    current_scene.enter()
  end 
end 


class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' =>EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }

  def self.generate_random_scene_name
    scene_names = Map.class_variable_get(:@@scenes).keys
    return scene_names.sample 
  end 

  def initialize(start_scene)
    @start_scene = start_scene
  end 

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end 

  def opening_scene()
    return next_scene(@start_scene)
  end
end 

room = Map.generate_random_scene_name
scene_map = Map.new(room)
new_game = Engine.new(scene_map)
new_game.play()

=begin

A Finite State Machine (FSM) is a mathematical model of computation that can be in exactly one of an finite number of states at any given time. It is an abstract machine that transitions from one state to another based on a set of rules or inputs.

Key Features

- Finite number of states: The machine can be in only a limited number of states, which are defined and predetermined.

- State transitions: The machine changes its state in response to inputs or events, following a set of rules or transition functions.

- No internal memory: FSMs do not have internal memory or variables to store data; their behavior is solely determined by their current state and inputs.

- Deterministic: The next state is uniquely determined by the current state and input.

Applications

Finite State Machines are used to design algorithms, recognize patterns, and analyze languages. They are particularly useful for:

- Characterizing Regular Languages
- Analyzing and recognizing Natural Language Expressions
- - Implementing simple decision-making processes
- Modeling and simulating systems with limited complexity

Examples

- A vending machine that dispenses products based on the user’s selection and payment
- A traffic light controller that switches between red, yellow, and green based on time and traffic conditions
- A simple chatbot that responds to user input with pre-defined messages

=end 
