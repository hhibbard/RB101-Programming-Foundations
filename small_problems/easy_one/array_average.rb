def average(array)
  result = array.sum / array.size
  result
end


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# solution

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number} # numbers.reduce(:+)
  sum / numbers.count
end


# to change result to float call .to_f on each element before calculation
