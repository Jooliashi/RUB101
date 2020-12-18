=begin
description:
Tic tac toe is a 2 player game played on a 3x3 board.
Each player takes a turn and marks a square on the board.
First player to reach 3 squares in a row, including diagonals, wins
If all 9 squares are marked and no player has 3 squares in a row
then the game is a tie

sequence:
1. Display the initial empty 3x3 board.
2. Ask the user to mark a square
3. Computer marks a square
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!
=end
require 'pry'
require 'pry-byebug'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
FIRST_MOVER = 'Choice'
def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, division = ', ', ending = 'or')
  last = array.pop.to_s
  if array.empty?
    last
  else
    array.join(division) + division + ending + " " + last
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'cls'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def immediate_threat_location?(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      line.each do |location|
        if brd[location] == INITIAL_MARKER
          return location
        end
      end
    end
  end
  nil
end

def offense_location?(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
       return brd.select{ |k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
    end
  end
  nil
end

def computer_places_piece!(brd)
  if !!offense_location?(brd)
    square = offense_location?(brd)
  elsif !!immediate_threat_location?(brd)
    square = immediate_threat_location?(brd)
  elsif brd[5] == INITIAL_MARKER
    square = 5
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, current_player)
  case current_player
  when 'Player'
    player_places_piece!(brd)
  when 'Computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer' : 'Player'
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def record_score(statement, score)
  case
  when statement == ('Player')
    score['Player'] += 1
  when statement == ('Computer')
    score['Computer'] += 1
  end
  p "Player: #{score['Player']}, Computer: #{score['Computer']}."
end

score = {'Player' => 0, 'Computer' => 0}

if FIRST_MOVER == 'Choice'
  prompt "Please choose who goes first: Player or Computer"
  answer = gets.chomp.downcase
  answer.start_with?('p') ? FIRST_MOVER = 'Player' : FIRST_MOVER = 'Computer'
end

loop do
  board = initialize_board
  display_board(board)
  current_player = FIRST_MOVER

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  record_score(detect_winner(board), score)
  break if score.values.include?(5)

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

if score['Player'] ==  5
  prompt "You are the grand champion!"
elsif score['Computer'] == 5
  prompt "Computer is the grand champion!"
end

prompt "Thanks for playing tictactoe, goodbye"
