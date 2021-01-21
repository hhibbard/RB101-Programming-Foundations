def oddities(arr)
  counter = 0
  new_arr = []
  loop do
    break if counter >= arr.size
    new_arr << arr[counter]
    counter += 2
  end
  new_arr
end

def evenss(arr)
  counter = 1
  new_arr = []
  loop do
    break if counter >= arr.size
    new_arr << arr[counter]
    counter += 2
  end
  new_arr
end

def oddities(arr)
  new_arr = []
  arr.each_with_index do |num, index|
    if index.even?
      new_arr << num
    end
  end
  new_arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []