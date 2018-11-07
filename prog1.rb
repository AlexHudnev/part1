def palindrome?(input)
  str_tmp =  input.downcase.scan(/(\w+|[а-я]+)/).join
  return str_tmp.reverse == str_tmp
end
  print "Please input: "
  a =  gets.chomp
  puts palindrome?(a)
