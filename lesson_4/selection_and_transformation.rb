# One
alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]
  
  if current_char == 'g'
    selected_chars << current_char
  end
  
  counter += 1
  break if counter == alphabet.size
end

puts selected_chars # => 'g'


# Two
fruits %W(apple banana pear)
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]
  
  transformed_elements << current_element + 's'
  
  counter += 1
  break if counter == fruits.size
end

puts transformed_elements # => ['apples', 'bananas', 'pears']


# Three

def select_vowels(str)
  selected_chars = ''
  counter = 0
  
  loop do
    current_char = str[counter]
    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end
    
    counter += 1
    break if counter == str.size
  end
  selected_chars
end


# Four

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}
  
  loop do
    break if counter == produce_keys.size
    
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]
    if produce_value == 'fruit'
      selected_fruits[current_key] = current_value
    end
    counter += 1
  end
  selected_fruits
end

select_fruit(produce)


# Five

my_numbers = [1, 4, 3, 7, 2, 6]

# does not mutate original array
def double_numbers(numbers)
  doubled_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers.size
    current_number = numbers[counter]
    doubled_numbers << current_number * 2
    counter += 1
  end
  doubled_numbers
end

double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

# mutates original array
def double_numbers!(numbers)
  counter = 0
  loop do
    break if counter == numbers.size
    numbers[counter] *= 2
    counter += 1
  end
  numbers
end

# Six

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers.size
    current_number = numbers[counter]
    current_number *= 2 if current_number.is_odd?
    doubled_numbers << current_number
    counter += 1
  end
  doubled_numbers
end

def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_numbers
    
    counter += 1
  end
  doubled_numbers
end

# Seven

def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keyscounter = 0
  selected_produce = {}
  
  loop do
    break if counter == produce_keys.size
    
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]
    
    if current_value == selection_criteria
      selected_produce[current_key] = current_value
    end
    
    counter += 1
  end
  selected_produce
end


# Eight

def multiply(numbers, value)
  multiplied_numbers = []
  counter = 0
  
  loop do
    multiplied_numbers << numbers[counter] *= value
    counter += 1
  end
  multiplied_numbers
end

# Nine

def select_letter(sentence, letter)
  selected_letters = ''
  counter = 0
  
  loop do
    break if counter == sentence.size
    current_letter = sentence[counter]
    
    selected_letters << current_letter if current_letter == letter
    
    counter += 1
  end
  selected_letters
end