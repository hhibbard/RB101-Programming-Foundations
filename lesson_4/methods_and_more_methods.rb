# Problem 1
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
# => [1, 2, 3]
# .select returns a new array containing elements of original array
# .select performs selection based on truthiness of block return value
# return value is 'hi' which is always truthy

# Problem 2
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
# => 2
# will count number of elements that returns true

# Problem 3
[1, 2, 3].reject do |num|
  puts num
end
# => [1, 2, 3]
# puts always returns nil
# reject returns a new array containing the items which return falsey
# therefore 1, 2, and 3 returned nil which is falsey and were added to array

# Problem 4
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# => {"a" => "ant", "b" => "bear", "c" => "cat"}
# method automatically passes in an object as an argument
# it will therefore pass "a" => "ant" etc.
# returns the value with all of the updates, therefore we get hashes as output

# Problem 5
hash = {a: 'ant', b: 'bear' }
hash.shift
# => [:a, 'ant']
# .shift destructively removes first key/value pair and returns it in an array

# Problem 6
['ant', 'bear', 'caterpillar'].pop.size
# => 11
# .pop is a destructive method that removes the last value from the array
# .size is called on the return value of .pop(caterpillar) and returns the length as an integer

# Problem 7
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
# output:
# 1
# => true
# the output is only 1 because puts num was invoked once
# once the .any? evaluates to true, it will break and return true since question was already satisfied

# Problem 8
arr = [1, 2, 3, 4, 5]
arr.take(2)
# => [1, 2]
# not a destructive method

# Problem 9
{ a: 'ant', b: 'bear', c: 'cat' }.map do |key, value|
  if value.size > 3
    value
  end
end
# => [nil, 'bear']
# return value of map is an array
# since it was called on 'ant' first, it returns nil
# it does not return 'cat' or nil because the statement already evaluated to true
# if 'cat' was before 'bear', it would return [nil, nil, 'bear']

# Problem 10
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
# output
# 2
# 3
# => [1, nil, nil]
# will evaluate 1 and return 1, will evaluate 2 and puts 2 then return nil, same for 3
