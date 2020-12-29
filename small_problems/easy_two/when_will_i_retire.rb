YEAR = Time.now.year

print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

years_to_go = retirement_age - age
retirement_year = YEAR + years_to_go

puts "It's #{YEAR}. You will reture in #{retirement_year}"
puts "You only have #{years_to_go} of work to go!"