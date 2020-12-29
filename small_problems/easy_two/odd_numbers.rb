num = 0
loop do
  puts num if num.odd?
  num += 1
  break if num > 99
end

arr = (1...100).to_a
arr.select { |num| puts num if num.odd?}