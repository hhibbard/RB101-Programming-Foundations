puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

meters_area = (length * width).round(2)
feet_area = (meters_area * 10.7639).round(2)

puts "The area of the room is #{meters_area} square meters (#{feet_area} square feet)."


# solution

SQMETERS_TO_SQFEET = 10.7639
# used constant in conversion instead of direct input
# this should be done any time a number is not defined in the code
# make it readable and reproducible