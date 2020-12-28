# Practice Problem 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
# option 1
flintstones.each_with_index do |value, index|
    flintstones_hash[value] = index
end
# option 2
counter = 0
flintstones.each do |name|
    flintstones_hash[name] = counter
    counter += 1
end

# Practice Problem 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
#total_age = 0
# option 1
#ages.each { |_, value| total_age += value }
# option 2
#ages.each_value { |value| total_age += value }
# option 3
#ages.values.inject(:+)

# Practice Problem 3
# option 1
#ages.keep_if { |_, value| value < 100 }
# option 2
#ages.select! { |_, value| value < 100 }

# Practice Problem 4
ages.each_value.min

# Practice Problem 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# option 1
flintstones.each_with_index do |name, index|
  if name.include?('Be')
    index
  end
end
# option 2 (better option)
flintstones.index { |name| name[0, 2] == 'Be' }

# Practice Problem 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] }

# Practice Problem 7
statement = "The Flintstones Rock"

frequency = {}
current_letter = statement[0]
count = 0

loop do
  break if statement.empty?
  statement.each_char do |letter|
    if current_letter == letter
      count += 1
    end
    frequency[letter] = count
  end
  statement.slice!(0)
end
# not quite there...

# solution
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# Practice Problem 8

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# shift will take one element (as specified by 1) off the beginning of the array
# for each iteration. it will continue to iterate through .each with next index
# this skips the number 2 in the array and ends before 4
# output will be:
# 1
# 3
# => nil

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# pop will take one element off the end of the array each iteration
# output:
# 1
# 2
# => nil

# Practice Problem 9
words = "the flintstones rock"
words.split.map { |word| word.capitalize }.join(' ')


# Problem 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |hash, value|
  case value["age"]
  when 0..18
    value["age_group"] = "kid"
  when 18..65
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end
puts munsters