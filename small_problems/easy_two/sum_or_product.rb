def valid_num?(num)
  num.positive?
end

def valid_operation?(operation)
  operation == 's' || operation == 'p'
end

def calculate_sum(num)
  arr = (1..num).to_a
  arr.sum
end

def calculate_product(num)
  arr = (1..num).to_a
  total = 1
  arr.each {|num| total *= num}
  total
end
number = 0
loop do
  puts ">> Please enter an integer greater than 0: "
  number = gets.chomp.to_i
  break if valid_num?(number)
end
answer = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  answer = gets.chomp
  break if valid_operation?(answer)
end

if answer == 's'
  puts "The sum of the integers between 1 and #{number} is #{calculate_sum(number)}."
elsif answer == 'p'
  puts "The product of the integers between 1 and #{number} is #{calculate_product(number)}"
else
  puts "Oops. Unknown operation."
end