def palindrome?(input)
  if input!= nil
  str_tmp =  input.to_s.downcase.scan(/(\w+|[а-я]+)/).join
  return str_tmp.reverse == str_tmp
  end
  return false
end
