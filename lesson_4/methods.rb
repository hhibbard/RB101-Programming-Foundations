# Each
numbers = [1, 2, 3]
counter = 0
 
loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

[1, 2, 3].each { |num| puts num }


hash = { a: 1, b: 2, c: 3 }

hash.each do|key, value|
  puts "The key is #{key} and the value is #{value}"
end

# .each will not mutate the caller

# Select

[1, 2, 3].select { |num| num.odd? }

[1, 2, 3].select { |num| num + 1 }


# Map

[1, 2, 3].map { |num| num * 2 }

# .map DOES mutate the caller
# this block will return a new array [2, 4, 6]

[1, 2, 3].map { |num| num.odd? }
# => [true, false, true]

[1, 2, 3].map do |num|
  num.odd?
  puts num
end
# => [nil, nil, nil]

[1, 2, 3].map { |num| 'hi' }
# => ['hi', 'hi', 'hi']

