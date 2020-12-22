# question 1
10.times {|number| puts (" " * number) + "The Flintstones Rock!"}

# question 2
#puts "the value of 40 + 2 is " + (40 + 2)

  #error is that 40+2 has not been converted to a string format
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{(40 + 2)}"

# question 3
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

  #the purpose of number % divisor == 0 is to see if the number is clearly divisible
  #by the divisor without a remainder
  #the purpose of factors is to ensure the correct return value in the method
  #method always returns last statement executed
  
# question 4
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

  #yes these methods are different
  #first method will mutate the argument passed into method
  #second method will return original argument
  
#question 5
limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

  #limit variable was not appropriately passed into method
  #methods are entirely self-contained and can't see local
  #variables. they must be passed into method to be used
  


# question 6
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

  #answer will be 34 because new_answer was assigned but not used
  
  
  
# question 7
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

  #yes this increased ages by 42 and changed gender to 'other' for all
  
  
# question 8
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

  #paper
  
#question 9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

#foo first => 'yes'
#bar('yes') == "no"
#answer = 'no'