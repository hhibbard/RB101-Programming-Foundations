require 'pry'

FACE_CARDS = %w(J Q K A)
SUITS = ['C', 'D', 'H', 'S']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []
  SUITS.each do |suit|
    (2..10).each { |num| deck << [suit, num.to_s] }
    FACE_CARDS.each { |card| deck << [suit, card] }
  end
  deck.shuffle
end

# solution where VALUES = (2..10 + face cards)
# def initialize_deck
#   SUITS.product(VALUES).shuffle
# end

def player_turn(cards, deck)
  loop do
    prompt("Hit or stay?")
    answer = gets.chomp.downcase
    if answer == 'hit'
      cards << deck.pop
      prompt("Your cards are #{cards}. Total: #{total?(cards)}")
      if total?(cards) > 21
        prompt('--------------------')
        break
      end
    else
      break
    end
  end
end

def dealer_turn(cards, deck)
  if total?(cards) < 17
    cards << deck.pop
    if total?(cards) > 21
      prompt('--------------------')
    end
  end
  cards
end

def total?(cards)
  sum = 0
  values = cards.map { |card| card[1] }
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def winner?(player, dealer)
  if total?(player) > 21
    prompt('You busted! Dealer wins!')
  elsif total?(dealer) > 21
    prompt('Dealer busted! You win!')
  elsif total?(player) > total?(dealer)
    prompt('You win!')
  elsif total?(dealer) > total?(player)
    prompt('Dealer wins!')
  else
    prompt("It's a tie!")
  end
end

def busted?(cards)
  total?(cards) > 21
end

# Main game loop
prompt('Welcome to Twenty-One!')
loop do
  # set up the deck and shuffle
  deck = initialize_deck

  # intitialize hands
  player_cards = []
  dealer_cards = []

  # deal cards
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  # display cards
  prompt("Your cards: #{player_cards}. Total: #{total?(player_cards)}")
  prompt("One of the dealers cards: #{dealer_cards[0]}")

  # player and computer turns
  player_turn(player_cards, deck)
  dealer_turn(dealer_cards, deck)

  # winner
  prompt("Your cards: #{player_cards}. Total: #{total?(player_cards)}")
  prompt("Dealer cards: #{dealer_cards}. Total: #{total?(dealer_cards)}")
  winner?(player_cards, dealer_cards)

  # play again?
  puts "----------------------"
  prompt('Would you like to play again (y or n)?')
  user_answer = gets.chomp.downcase
  break unless user_answer == 'y'
end
