def sum(integer)
  result = 0
  digits = integer.to_s.chars
  
  digits.map do |digit|
    result += digit.to_i
  end
  result
end
    
    
    
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# solution
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end