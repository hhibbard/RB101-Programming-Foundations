age = rand(20..200)
puts "Teddy is #{age} years old!"

puts "What's your name?"
name = gets.chomp.capitalize
if name.empty?
    name = 'Teddy'
end
puts "#{name} is #{age} years old!"