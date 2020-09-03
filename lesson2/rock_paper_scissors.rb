=begin
1. Lizard Spock addition
need to add additional logic to display results
2. Abbreviation for words
need to re-validate choices
3. keep scores
need to add additional loops
=end

VALID_CHOICES = { 'r' => 'rock', 'p' => 'paper', 'sc' => 'scissors',
                  'l' => 'lizard', 'sp' => 'spock' }
RULES = { 'r' => ['sc', 'l'], 'p' => ['r', 'sp'], 'sc' => ['p', 'l'],
          'l' => ['sp', 'p'], 'sp' => ['r', 'sc'] }

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  RULES[first].include?(second)
end

def results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

prompt("Welcome to the #{VALID_CHOICES.values.join(' ')} game!")

computer_wins = 0
player_wins = 0
while computer_wins < 5 && player_wins < 5
  choice = ''
  loop do
    prompt("Please choose one: #{VALID_CHOICES.keys.join(',')}
           (for rock, paper, scissors, spock or lizard)")
    choice = gets.chomp.downcase
    if VALID_CHOICES.key?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.keys.sample
  puts "you chose: #{choice}; Computer chose: #{computer_choice}"

  player_result = results(choice, computer_choice)
  prompt(player_result)

  if player_result.include?("You")
    player_wins += 1
  elsif player_result.include?("Computer")
    computer_wins += 1
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

if player_wins == 5
  prompt("The match is over! You are the grand winner!")
elsif computer_wins == 5
  prompt("Computer won. Try again next time")
else
  prompt("You won #{player_wins} times and computer won #{computer_wins} times")
end

prompt("Thank you for playing.")
