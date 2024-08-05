# https://learnrubythehardway.org/book/ex31.html

puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

print "> "

door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear"
  puts "Something else"

  print "> "

  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear picks up a fork and stabs you in the eye."
  elsif bear == "2"
    puts "The bear eats your legs off while drinking a nice chianti"
  elsif bear == "Something else" || "something else"
    puts "Well, doing %s is probably better. The bear runs away and cries." % bear
  else 
    puts "The bear tugs at what appears to be a zipper. Suddenly, its skin falls away, revealing an ape-like humanoid. It's Bigfoot!"
  end 

elsif door == "2"
  puts "You stare into the endless abyss in Cthulhu's eyes. What do you do?"
  puts "1. Scream maniacally and wind up in a mental institution."
  puts "2. Mutter 'Ph\'nglui mglw'nafh Cthulhu R\'lyeh wgah\'nagl fhtagn' in R'lyehian over and over again."
  puts "3. Research the Old Ones for the rest of your life while spiraling through an existential crisis."

  print "> "

  insanity = $stdin.gets.chomp

  if insanity == "1"
    puts "One day a man enters your cell. He opens your window and the leaves. You stare down at the ground below, knowing what you must do."
  elsif insanity == "2"
    puts "Your life falls apart, but your body survives, powered by a mind of jello."
  elsif insanity == "3"
    puts "You become a professor and fall in love with a weird librarian, who helps you on your quest. Sadly, you both die in an ancient temple of Cthulhu after finding and opening the Necrinomicon."
  else 
    puts "Who knows the end? What has risen may sink, and what has sunk may rise. Loathsomeness waits and dreams in the deep, and decay spreads over the tottering cities of men."
  end 

else 
  puts "You stumble around and fall on a knife and die. Ope!"
end 