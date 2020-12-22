# question 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# expected output:
# 1
# 2
# 2
# 3
# puts numbers will put each on separate line, .uniq does not mutate

#question 2
# ! is a negation of truthiness, ! and ? can be part of method names
# 1. != means not equal to
# 2. "not user name"
# 3. words.uniq! - ! after valid method will mutate the variable, here it will remove duplicate words
# 4. ? before something is used in ternary operation
# 5. ? after is usually part of method name - purpose depends on method called
# 6. !!user_name means user_name is the truthy answer

# question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# question 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # will delete number at the [1] position, in this case 2
numbers.delete(1) # will delete the number 1 within the array

# question 5
(10..100).include?(42)
# answer was (10..100)cover?(42)

# question 6
famous_words = "seven years ago..."

"Four score and " + famous_words
famous_words.prepend("Four score and ")
"for score and" << famous_words

# question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
p flintstones.flatten!

# question 8
flinstones.assoc('Barney')