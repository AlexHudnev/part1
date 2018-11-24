def palindrome?(input)
  return false if input.is_a? NilClass
  str_tmp =  input.downcase.gsub(/[^a-zа-я0-9]/,'')
  str_tmp.reverse == str_tmp
end


puts palindrome?("A man, a plan, a canal -- Panama")