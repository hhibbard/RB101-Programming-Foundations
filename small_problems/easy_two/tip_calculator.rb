print "What is the bill? "
bill = gets.chomp.to_f
print "What is the tip percentage? "
tip_percent = gets.chomp.to_f

tip_amount = (bill * (tip_percent / 100)).round(2)
total_bill = (bill + tip_amount).round(2)

puts "The tip is $#{tip_amount}"
puts "The total is $#{total_bill}"