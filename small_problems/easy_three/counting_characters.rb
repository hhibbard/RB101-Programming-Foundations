def prompt(message)
  puts "==> #{message}"
end

prompt("Please write word or multiple words: ")
str = gets.chomp

num_chars = str.delete(' ').length
puts "There are #{num_chars} in \"#{str}\"."