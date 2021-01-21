def palindrome?(str)
  str == str.reverse
end

def palindrome?(arr)
  arr == arr.reverse
end

def palindrome?(value)
  value == value.reverse
end

puts palindrome?([2, 4, 5, 5, 4, 2]) == true
puts palindrome?([3, 5, 6, 7, 2, 3]) == false
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true