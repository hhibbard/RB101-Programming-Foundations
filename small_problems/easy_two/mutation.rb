array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# will output:
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# pushing the values of array1 to array 2 pushes a REFERENCE
# of these objects. Therefore, when the object is changed
# and the reference remains, it will reflect the changes made
