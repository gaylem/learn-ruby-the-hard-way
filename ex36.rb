# https://learnrubythehardway.org/book/ex36.html

=begin

Rules for If-Statements

1. Every if-statement must have an else.

2. If this else should never run because it doesn't make sense, then you must use a `die` function in the else that prints out an error message and dies, just like we did in the last exercise. This will find many errors.

3. Never nest if-statements more than two deep and always try to do them one deep.

4. Treat if-statements like paragraphs, where each if-elsif-else grouping is like a set of sentences. Put blank lines before and after.

5. Your Boolean tests should be simple. If they are complex, move their calculations to variables earlier in your function and use a good name for the variable.


Rules for Loops

1. Use a while-loop only to loop forever, and that means probably never. This only applies to Ruby; other languages are different.

2. Use a for-loop for all other kinds of looping, especially if there is a fixed or limited number of things to loop over.


Tips for Debugging

1. Do not use a "debugger." A debugger is like doing a full-body scan on a sick person. You do not get any specific useful information, and you find a whole lot of information that doesn't help and is just confusing.

2. The best way to debug a program is to use put to print out the values of variables at points in the program to see where they go wrong.

3. Make sure parts of your programs work as you work on them. Do not write massive files of code before you try to run them. Code a little, run a little, fix a little.

=end

def heaven
  puts "Heaven is bright and very boring. Do you want to stay, or go?"

  print "> "
  stay_or_go = $stdin.gets.chomp

  if stay_or_go.include? "stay"
    puts "One day you get bored and start looking for God. When you open the door to his throne room, there is nothing in there except a cat sleeping on a king-sized, four-poster bed. It wakes up and sees you, a slight scowl on its face. Suddenly, you feel yourself flying through time and space."
    mars
  elsif stay_or_go.include? "go"
    puts "An angel with a large staff of twisted wood approaches you. It points the tip to the ground below you and a swirling vortex opens up. While you stare into its awful beauty, you feel a hand on your back. The angel shoved you in!"
    cthulhu_room 
  else
    puts "God is annoyed with you, so they send you to the part of heaven where all the neurotypical people hang out. Just when you think you are going to go insane, a handsome man approaches you. He whispers something in your ear, and you fall asleep."
    hell 
  end 
end

def mars
  puts "You wake up, flat on your back and coughing up red dust. The ground is hard and cracked. As your eyes start to adjust, a robot rolls past. You sit up and take a closer look, and you notice the word NASA on the side. It's the Mars rover! What do you do?"
  puts "1. Kick the Mars rover in frustration."
  puts "2. Taunt the Mars rover. What a hunk of junk!"
  puts "3. Talk to the Mars rover. It's weird, but you feel pretty lonely right now."

  rover_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    kick = ["1", "Kick the Mars rover in frustration", "Kick the Mars rover in frustration.", "kick the Mars rover", "kick it", "kick"]
    taunt = ["2", "taunt", "Taunt the rover", "taunt the rover", "taunt it"]
    talk = ["3", "talk to it", "talk", "Talk to the Mars rover.", "Talk to the Mars rover"]

    if kick.include?(choice)
      dead("The Mars rover lets out a shriek and shoots you with a laser beam, killing you instantly.")
    elsif taunt.include?(choice) && !rover_moved
      puts "The rover leaves, but you decide to follow it. Do you kick it, taunt it again, or talk to it?"
      rover_moved = true
    elsif talk.include?(choice) && !rover_moved
      puts "The rover guides you to its home, where it lives with many robots and alien beings who have built an advanced, secret civilization on Mars."
      dead("They welcome you as one of their own and you live happily ever after with your new best friend.")
    elsif taunt.include?(choice) && rover_moved
      dead("Another robot was hiding in the bushes! It saw you bullying its friend and runs you over with its giant tank wheels.")
    elsif talk.include?(choice) && rover_moved
      puts "You apologize to the rover."
      puts "It starts making beeping sounds, which you somehow understand. It asks you if you would rather"
      puts "1. Do good."
      puts "2. Be bad."
      print "> "
      sub_choice = $stdin.gets.chomp
      if sub_choice == "1" || sub_choice.downcase == "do good"
        puts "Suddenly, it emits a bright, white light and you feel yourself floating upward..."
        heaven
      elsif sub_choice == "2" || sub_choice.downcase == "be bad"
        puts "The rover leads you to a dark cave and tells you to walk inside. Afraid but excited, you comply. As you walk through the darkness, you notice that the air is thinning. You begin to gasp and head back toward the entrance but it's too late. You collapse and lose consciousness, but just before you do, you think you see a man's face... "
        hell
      else
        dead("The rover doesn't understand so it leaves you alone and you die of starvation and thirst")
      end
    else
      dead("You stumble around on Mars until you starve.")
    end
  end
end


def hell
  puts "You wake up in a room surrounded by people who are dancing and drinking. A glowing red light blankets each body. A man is sitting next to you, smiling. You recognize him, but can't remember where or when you met. He hands you a drink and asks you what you desire. Do you..."
  puts "1. Answer honestly, you have nothing to hide"
  puts "2. Lie, of course. It's none of his business anyhow!"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "1" || choice.include? "honestly"
    end_game("The man takes your hand and leads you through a door, where all of your wildest dreams come true!")
  else
    dead("The man scowls at you. The dancing stops, and everything grows eerily quiet. The man leads you through a door, and you burn in hell for all eternity.")
  end 
end 

def matts_room
  puts "You see a teenager lying on a twin bed, reading a comic book. Band posters cover the walls."
  puts "He looks at you and asks why you're in his room."
  puts "Do you flee for your life, ask him for help?, or something else?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    puts start
  elsif choice.include? "help"
    puts "He says, 'Yeah sure, I'll help you...' and reaches under his bed. He pulls out a knife and stabs you!"
    heaven
  else
    puts "The kid starts chanting in Latin. Suddenly, his closet doors fly open and a rushing wind sucks you in!"
    hell
  end
end 

def dead(why)
  puts why
  exit(0)
end 

def end_game(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    heaven
  elsif choice == "right"
    cthulhu_room
  else
    dead("You go home and have a boring life.")
  end
end

start