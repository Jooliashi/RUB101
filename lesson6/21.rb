WINNING_LIMIT = 21
DEALER_LIMIT = 17
SUITS = { 'S' => 'Spade',
          'D' => 'Diamond',
          'C' => 'Club',
          'H' => 'Heart' }
VALUES = (2..10).to_a.map(&:to_s) + ['J', 'Q', 'K', 'A']

def prompt(msg, pause_time = 1.2)
  puts "=> #{msg}"
  sleep(pause_time)
end

def display_suits(arr)
  arr.map { |sub| "#{SUITS[sub[0]]} #{sub[1]}" }
end

def joinor(array, division = ', ', ending = 'and')
  array = display_suits(array)
  case array.size
  when 1
    "and #{array[0]}"
  when 2
    "#{array[0]} #{ending} #{array[1]}"
  else
    last = array.last
    result = ''
    array[0..-2].each do |element|
      result << element << division
    end
    result << ending << ' ' << last.to_s
  end
end

def initialize_deck
  suits = SUITS.keys
  total = suits.product(VALUES)

  { 'player' => [], 'dealer' => [], "rest" => total }
end

def display_cards(deck, all = false)
  system 'cls'
  prompt("Player's cards are: " + joinor(deck['player']), 0)
  if all
    prompt("Dealer's cards are: " + joinor(deck['dealer']), 0)
  else
    prompt(
      "Dealer's cards are: one hidden card, " + joinor(deck['dealer'][1..-1]),
      0.7
    )
  end
end

def deal_cards(deck, whose_turn)
  prompt("Drawing one card for #{whose_turn}...", 0.7)
  draw = deck['rest'].sample
  deck[whose_turn] << draw
  deck['rest'].delete(draw)
end

def hit_or_stay?(whose_turn)
  prompt("#{whose_turn}, (h)it or (s)tay?", 0)
  answer = ''
  loop do
    answer = gets.chomp.downcase
    break if ['h', 's'].include?(answer)
    prompt "This is not a valid answer, h or s only"
  end
  answer
end

def total(cards)
  values = cards.map { |card| card[1] }

  total = values.reduce(0) do |sum, value|
    sum + if value == 'A'
            11
          elsif value.to_i == 0
            10
          else
            value.to_i
          end
  end

  values.select { |value| value == 'A' }.count.times do
    total -= 10 if total > WINNING_LIMIT
  end

  total
end

def busted?(total)
  total > WINNING_LIMIT
end

def detect_winner(player_score, dealer_score)
  if player_score > WINNING_LIMIT
    "You have gone busted; dealer won!"
  elsif dealer_score > WINNING_LIMIT
    "Dealer has gone busted; you won!"
  else
    prompt "Player scored #{player_score}, dealer scored #{dealer_score}."
    case player_score <=> dealer_score
    when 1
      "You won!"
    when -1
      "Dealer won!"
    else
      "It's a tie"
    end
  end
end

def play_again?
  prompt("-----------", 0)
  prompt("Do you want to play again", 0)
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

system 'cls'
prompt "Welcome to the #{WINNING_LIMIT} game."
prompt "This is a one player vs one dealer game; player will go first"
prompt "The game will start now"

player_wins = 0
dealer_wins = 0
loop do
  system 'cls'
  deck = initialize_deck
  prompt "We will now deal the cards"
  2.times { deal_cards(deck, 'player') }
  2.times { deal_cards(deck, 'dealer') }
  display_cards(deck)

  player_total = total(deck['player'])
  dealer_total = total(deck['dealer'])
  player_answer = ''
  loop do
    player_answer = hit_or_stay?('Player')
    break if player_answer == 's' || busted?(player_total)
    deal_cards(deck, 'player')
    display_cards(deck)
    player_total = total(deck['player'])
    break if busted?(player_total)
  end

  if !busted?(player_total)
    prompt("You chose to stay; it's now dealer's turn")
    loop do
      break if dealer_total >= DEALER_LIMIT
      prompt "Dealer hits!"
      deal_cards(deck, 'dealer')
      display_cards(deck)
      dealer_total = total(deck['dealer'])
    end
  end

  display_cards(deck, true)
  statement = detect_winner(player_total, dealer_total)
  prompt(statement)
  if statement.downcase.include?('you won')
    player_wins += 1
  elsif statement.downcase.include?('dealer won')
    dealer_wins += 1
  end
  prompt("You have won #{player_wins} times, and dealer #{dealer_wins} times")
  break if dealer_wins == 5 || player_wins == 5 || !play_again?
end

if player_wins == 5
  prompt("You are the grand winner, thank you for playing", 0)
elsif dealer_wins == 5
  prompt("Dealer is the grand winner, thank you for playing", 0)
else
  prompt("Thank you for playing", 0)
end
