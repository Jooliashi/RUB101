require 'yaml'

VALID_CHOICES = { 'r' => 'rock', 'p' => 'paper', 'sc' => 'scissors',
                  'l' => 'lizard', 'sp' => 'spock' }
RULES = { 'r' => ['sc', 'l'], 'p' => ['r', 'sp'], 'sc' => ['p', 'l'],
          'l' => ['sp', 'p'], 'sp' => ['r', 'sc'] }
MESSAGES = YAML.load(
           File.open('rps_messages.yml').read
           )
NUM_WINS = 5

def prompt(message)
  puts "=> #{message}"
end

def pause(time = 1.0)
  sleep(time)
end

def win?(first, second)
  RULES[first].include?(second)
end

def begin_game?
  loop do
    begin_choice = valid_yes_no(MESSAGES["begin"])
    if begin_choice.start_with?('y')
      break prompt(MESSAGES['game_start'])
    else
      quit_game
    end
  end
end

def quit_game
  abort MESSAGES['game_end']
end

def get_choice
  choice = ''
  loop do
    prompt(MESSAGES['choice'])
    choice = gets.chomp.downcase
    if VALID_CHOICES.key?(choice)
      break
    else
      prompt(MESSAGES['not_valid'])
    end
  end
  choice
end

def results(player, computer)
  if win?(player, computer)
    MESSAGES["player_won"]
  elsif win?(computer, player)
    MESSAGES["computer_won"]
  else
    MESSAGES["tie"]
  end
end

def update_score(winner_message, score_hash)
  if winner_message.include?("You")
    score_hash["player_wins"] += 1
  elsif winner_message.include?("Computer")
    score_hash["computer_wins"] += 1
  end
end

def valid_yes_no(question)
  input = ''
  prompt(question)
  loop do
    input = gets.chomp.downcase
    break if %w(y yes n no).include?(input)
    prompt(MESSAGES["not_valid"])
  end
  input
end

def display_score(hash)
  prompt("Computer scored #{hash['computer_wins']}; You scored #{hash['player_wins']}")
end

def display_grand_winner(player, computer)
  if player == 5
    prompt("The match is over! You are the grand winner!")
  elsif computer == 5
    prompt("Computer won. Try again next time")
  else
    prompt("You won #{player} times and computer won #{computer} times. There is no grand winner.")
  end
end

system('cls')

prompt(MESSAGES["welcome"])
pause
prompt(MESSAGES["rules"])
pause
prompt(MESSAGES["win_condition"] + " " + "#{NUM_WINS}")
pause

begin_game?
pause
system('cls')

scores = {'computer_wins' => 0,
          'player_wins' => 0 }

while scores['computer_wins'] < NUM_WINS && scores['player_wins'] < NUM_WINS

  player_choice = get_choice

  computer_choice = VALID_CHOICES.keys.sample

  puts "You chose: #{VALID_CHOICES[player_choice]}; Computer chose: #{VALID_CHOICES[computer_choice]}"
  pause

  player_result = results(player_choice, computer_choice)
  prompt(player_result)
  pause(2)

  update_score(player_result, scores)
  display_score(scores)
  pause

  player_continue = valid_yes_no(MESSAGES["continue"])
  break if player_continue.start_with?('n')

end

display_grand_winner(scores['player_wins'], scores['computer_wins'])
pause

prompt("Thank you for playing.")
