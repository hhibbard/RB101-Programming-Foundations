require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
TURN = 'choose'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]} "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, punctuation = ', ', word = 'or')
  counter = 0
  str = ''
  loop do
    break if counter >= arr.size
    if counter == arr.size - 1
      str << word + ' ' + arr[counter].to_s
    else
      str << arr[counter].to_s + punctuation
    end
    counter += 1
  end
  str
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def place_piece!(brd, current_player)
  if current_player == 'computer'
    computer_places_piece!(brd)
  else
    player_places_piece!(brd)
  end
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

# rubocop:disable Metrics/MethodLength
def computer_places_piece!(brd)
  square = nil
  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  # defense
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  # pick 5 or just pick a square
  if !square
    if empty_squares(brd).include?(5)
      square = 5
    else
      square = empty_squares(brd).sample
    end
  end
  brd[square] = COMPUTER_MARKER
end
# rubocop:enable Metrics/MethodLength

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #   brd[line[1]] == PLAYER_MARKER &&
    #   brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    # refactor above code
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def alternate_player(current_player)
  if current_player == 'computer'
    current_player = 'player'
  else
    current_player = 'computer'
  end
end

player_wins = 0
computer_wins = 0
loop do
  board = initialize_board
  if TURN == 'choose'
    prompt "Who should go first (player or computer)?"
    answer = gets.chomp
    case answer
    when 'player'
      current_player = 'player'
      loop do
        display_board(board)
        prompt("Player wins: #{player_wins}, Computer wins: #{computer_wins}")
        place_piece!(board, current_player)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
      end
      display_board(board)
      if someone_won?(board)
        prompt "#{detect_winner(board)} won!"
        player_wins += 1 if detect_winner(board) == 'Player'
        computer_wins += 1 if detect_winner(board) == 'Computer'
      else
        prompt "It's a tie!"
      end
      if player_wins >= 5
        puts 'Player wins!'
        break
      elsif computer_wins >= 5
        puts 'Computer wins!'
        break
      end
    when 'computer'
      current_player = 'computer'
      loop do
        prompt("Player wins: #{player_wins}, Computer wins: #{computer_wins}")
        display_board(board)
        place_piece!(board, current_player)
        current_player = alternate_player(current_player)
        break if someone_won?(board) || board_full?(board)
      end
      display_board(board)
      if someone_won?(board)
        prompt "#{detect_winner(board)} won!"
        player_wins += 1 if detect_winner(board) == 'Player'
        computer_wins += 1 if detect_winner(board) == 'Computer'
      else
        prompt "It's a tie!"
      end
      if player_wins >= 5
        puts 'Player wins!'
        break
      elsif computer_wins >= 5
        puts 'Computer wins!'
        break
      end
    else
      puts "Invalid answer. Please try again."
    end
  end
end

prompt("Thanks for playing Tic Tac Toe! Goodbye!")
