# https://learnrubythehardway.org/book/ex38.html

# ten_things = "Apples Oranges Crows Telephone Light Sugar"

# puts "Wait there are not 10 things in that list. Let's fix that."

# stuff = ten_things.split(' ')
# more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# while stuff.length != 10
#   next_one = more_stuff.pop
#   puts "Adding: #{next_one}"
#   stuff.push(next_one)
#   puts "There are #{stuff.length} items now."
# end 

# puts "There we go: #{stuff}"

# puts "Let's do some things with stuff"

# puts stuff[1]
# puts stuff[-1]
# puts stuff.pop
# puts stuff.join(' ')
# puts stuff[3..5].join('#')

def magic_trick()
  deck = [
    "2 of Hearts", "3 of Hearts", "4 of Hearts", "5 of Hearts", "6 of Hearts", "7 of Hearts", "8 of Hearts", "9 of Hearts", "10 of Hearts", "Jack of Hearts", "Queen of Hearts", "King of Hearts", "Ace of Hearts",
    "2 of Diamonds", "3 of Diamonds", "4 of Diamonds", "5 of Diamonds", "6 of Diamonds", "7 of Diamonds", "8 of Diamonds", "9 of Diamonds", "10 of Diamonds", "Jack of Diamonds", "Queen of Diamonds", "King of Diamonds", "Ace of Diamonds",
    "2 of Clubs", "3 of Clubs", "4 of Clubs", "5 of Clubs", "6 of Clubs", "7 of Clubs", "8 of Clubs", "9 of Clubs", "10 of Clubs", "Jack of Clubs", "Queen of Clubs", "King of Clubs", "Ace of Clubs",
    "2 of Spades", "3 of Spades", "4 of Spades", "5 of Spades", "6 of Spades", "7 of Spades", "8 of Spades", "9 of Spades", "10 of Spades", "Jack of Spades", "Queen of Spades", "King of Spades", "Ace of Spades"
  ]

  puts "Greetings! I am Ben the Magnificent. Welcome to my magic shop!"
  puts "Think of a card while I shuffle my card deck."
  puts "Shuffling..."

  shuffled = deck.sort_by { rand }

  def delayed_execution(delay_seconds)
    puts "Shuffled!"
    puts "Pick a card, any card (choose a number between 1 and 53):"
    print "> "
  end

  delay_seconds = 2
  Thread.new do
    sleep(delay_seconds)
    delayed_execution(delay_seconds)
  end

  card = $stdin.gets.chomp
  card_num = card.to_i

  puts shuffled[card_num - 1]
  puts "Was that your card? (Y/N)"

  result = $stdin.gets.chomp

  if result == 'Y'
    puts "Oh yay I did it!"
  elsif result == 'N'
    puts "Bollocks."
  end 

end

magic_trick()


