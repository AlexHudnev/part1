def palindrome?(input)
  str_tmp =  input.to_s.downcase.scan(/(\w+|[а-я]+)/).join
  return str_tmp.reverse == str_tmp
end
puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!")
puts palindrome?(333)
puts palindrome?("Abracadabra")
