WINNING_LIMIT = 21
DEALER_LIMIT = 17
SUITS = ['Spade', 'Diamond', 'Club', 'Heart']
VALUES = (2..10).to_a.map(&:to_s) + ['J', 'Q', 'K', 'A']
require 'pry'

def prompt(msg, pause_time = 1.2)
  puts "=> #{msg}"
  sleep(pause_time)
end

def clear_screen
  system 'cls'
end

def turn_to_string(arr)
  arr.map { |sub| "#{sub['suit']} #{sub['value']}" }
end

def joinor(array, division = ', ')
  array = turn_to_string(array)
  case array.size
  when 1 then "and #{array[0]}"
  when 2 then array.join(" and ")
  else
    array[-1] = "and #{array.last}"
    array.join(division)
  end
end

def initialize_deck
  total = SUITS.product(VALUES).each_with_object([]) do |sub, arr|
    arr << { 'suit' => sub[0], 'value' => sub[1] }
  end

  initialize_deck_score(total)

  total.shuffle
end

def initialize_deck_score(deck)
  deck.map do |card|
    card['score'] = if card['value'] == 'A'
                      11
                    elsif card['value'].to_i == 0
                      10
                    else
                      card['value'].to_i
                    end
  end
end

def present_details(cards, all = true)
  if all
    joinor(cards)
  else
    "one hidden card, #{joinor(cards[1..-1])}"
  end
end

def display_cards(player_cards, dealer_cards, all = true)
  clear_screen
  prompt("Player's cards are #{present_details(player_cards)}", 0)
  prompt("Dealer's cards are #{present_details(dealer_cards, all)}", 0.7)
end

def deal_cards(deck, whose_cards)
  whose_cards << deck.pop
  update_a_score(whose_cards)
end

def cards_total_score(cards)
  cards.map { |card| card['score'] }.sum
end

def update_a_score(cards)
  total = cards_total_score(cards)
  if total > 21
    cards.each do |card|
      if card['value'] == 'A'
        card['score'] = 1
      end
    end
  end
end

def draw_card_prompts
  prompt("Drawing one card for player...", 0.7)
  prompt("Drawing one card for dealer...", 0.7)
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
  prompt("Do you want to play again, y or n", 0)
  answer = ''
  loop do
    answer = gets.chomp.downcase
    break if ['y', 'n'].include?(answer)
    prompt("invalid answer, y or n only please")
  end
  answer.downcase.start_with?('y')
end

clear_screen
prompt "Welcome to the #{WINNING_LIMIT} game."
prompt "This is a one player vs one dealer game; player will go first"
prompt "The game will start now"

player_wins = 0
dealer_wins = 0

loop do
  clear_screen
  deck = initialize_deck
  player_cards = []
  dealer_cards = []
  prompt "We will now deal the cards"
  2.times do
    deal_cards(deck, player_cards)
    deal_cards(deck, dealer_cards)
    draw_card_prompts
  end
  display_cards(player_cards, dealer_cards, false)

  player_total = cards_total_score(player_cards)
  dealer_total = cards_total_score(dealer_cards)
  player_answer = ''
  loop do
    player_answer = hit_or_stay?('Player')
    break if player_answer == 's' || busted?(player_total)
    deal_cards(deck, player_cards)
    display_cards(player_cards, dealer_cards, false)
    player_total = cards_total_score(player_cards)
    break if busted?(player_total)
  end

  if !busted?(player_total)
    prompt("You chose to stay; it's now dealer's turn")
    loop do
      break if dealer_total >= DEALER_LIMIT
      prompt "Dealer hits!"
      deal_cards(deck, dealer_cards)
      display_cards(player_cards, dealer_cards, false)
      dealer_total = cards_total_score(dealer_cards)
    end
    prompt("Dealer decided to stay") if dealer_total < WINNING_LIMIT
  end

  display_cards(player_cards, dealer_cards)
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
