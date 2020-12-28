require 'date'

puts Date.civil
# -4712-01-01
puts Date.civil(2016)
# 2016-01-01
puts Date.civil(2016, 5)
# 2016-05-01
puts Date.civil(2016, 5, 13)
# 2016-05-13

# if a value is not specified, it will use a default number
# defaults = -4712-01-01