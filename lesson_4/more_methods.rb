#Enumerable#any?
[1, 2, 3].any? { |num| num > 2}
# => true

{ a: 'ant', b: 'bear', c: 'cat' }.any? { |key, value| value.size > 4 }
# => false

#Enumerable#all?
[1, 2, 3].all? { |num| num > 2 }
# => false

{ a: 'ant', b: 'bear', c: 'cat' }.any? { |key, value| value.length >= 3 }
# => true

#Enumerable#with_each_index
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
# The index of 1 is 0.
# The index of 2 is 1.
# The index of 3 is 2.
# => [1, 2, 3]

{ a: 'ant', b: 'bear', c: 'cat' }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end
# The index of [a:, 'ant'] is 0.
# The index of [b:, 'bear'] is 1.
# The index of [c:, 'cat'] is 2.
# => {a: 'ant, b: 'bear', c: 'cat'}

#Enumerable#each_with_object
[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end
# => [1, 3]


{ a: 'ant', b: 'bear', c: 'cat' }.each_with_object([]) do |pair, array|
  array << pair.last
end
# => ['ant', 'bear', 'cat']

{ a: 'ant', b: 'bear', c: 'cat' }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
# => { 'ant' => a:, 'bear' => b:, 'cat' => c: }

#Enumerable#first
[1, 2, 3].first
# => 1

{ a: 'ant', b: 'bear', c: 'cat' }.first(2)
# => [[a:, 'ant'], [b:, 'bear']]
# unexpected that it would be nested array, but can call .to_h to turn back into hash
# first is most often used with arrays

#Enumerable#include?

[1, 2, 3].include?(1)
# => true

{ a: 'ant', b: 'bear', c: 'cat' }.include?('ant')
# => false

{ a: 'ant', b: 'bear', c: 'cat' }.include?(:a)
# => true
# when using .include? with a hash, it only checks the keys

#Enumerable#partition
[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]


odd, even = [1, 2, 3].partition do |num|
  num.odd?
end
odd # => [1, 3]
even # => [2]

long, short = { a: 'ant', b: 'bear', c: 'cat' }.partition do |key, value|
  value.size > 3
end
# => [[[:b, 'bear']], [[:a, 'ant'], [:c, 'cat']]]

