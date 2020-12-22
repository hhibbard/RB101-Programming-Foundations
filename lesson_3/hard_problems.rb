# question 1
if false
  greeting = "hello world"
end

greeting
# this will return nil


# question 2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# will output {a:=>"hi there"}
#'there' was pushed into the hash, mutates the variable
#greetings and informal_greetings point to same object

#question 3
#A
  #one is one
  #two is two
  #three is three
#B
  #one is one
  #two is two
  #three is three
#C
  #one is two
  #two is three
  #three is one
  
  
# question 4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

