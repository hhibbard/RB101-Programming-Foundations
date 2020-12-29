def stringy(num)
  counter = num
  str = ''
  loop do
    break if counter == 0
    str << '1'
    counter -= 1
    break if counter == 0
    str << '0'
    counter -= 1
  end
  str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


# solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end
