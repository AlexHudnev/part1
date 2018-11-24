def count_words(string)
  hash = Hash.new(0)
  string.downcase.split.each{|word| hash[word] += 1}
hash
end

puts count_words("A man, a plan, a canal -- Panama")
puts count_words ("Doo bee doo bee doo")