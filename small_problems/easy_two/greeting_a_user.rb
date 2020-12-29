print "What's your name? "
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name.upcase.chop} WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end