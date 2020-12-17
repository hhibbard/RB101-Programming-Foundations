VALID_CHOICES = %w(rock paper scissors spock lizard)
USER_CHOICE = %w(r p sc sp l)

def prompt(message)
  puts("=> #{message}")
end

def convert_answer(answer)
  case answer
  when 'r'
    answer = 'rock'
  when 'p'
    answer = 'paper'
  when 'sc'
    answer = 'scissors'
  when 'sp'
    answer = 'spock'
  when 'l'
    answer = 'lizard'
  end
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'lizard' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

#def counter(player, computer)
#  user_wins = 0
#  computer_wins = 0
#  if win?(player, computer)
#    user_wins += 1
#  elsif win?(computer, player)
#    computer_wins += 1
#  end
#  prompt("You have #{user_wins} wins. Computer has #{computer_wins} wins.")
#end

user_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("Type r for rock, p for paper, sc for scissors, sp for spock, l for lizard")
    choice = gets.chomp

    if USER_CHOICE.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()
  
  prompt("You chose: #{convert_answer(choice)}; Computer chose #{computer_choice}")

  display_result(convert_answer(choice), computer_choice)
#  counter(convert_answer(choice), computer_choice)
  
  if user_wins < 5 && computer_wins < 5
    if win?(convert_answer(choice), computer_choice)
      user_wins += 1
    elsif win?(computer_choice, convert_answer(choice))
      computer_wins += 1
    end
  end
  prompt("You have #{user_wins} wins. Computer has #{computer_wins} wins.")
  break if user_wins == 5 || computer_wins == 5
end

prompt("Thank you for playing. Goodbye!")
