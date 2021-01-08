VOWELS = %w(a e i o u)
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, value|
  value.each do |word|
    word.each_char do |letter|
      puts letter if VOWELS.include?(letter)
    end
  end
end


# solution
vowels = 'aeiou'

hshs.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
