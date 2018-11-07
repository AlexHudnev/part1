def count_words(string)
  arr_tmp =  string.downcase.scan(/(\w+|[а-я]+)/)
  size = arr_tmp.size
  flag_arr = Array.new(size)
  output = Hash.new

  for i in 0...size
    if flag_arr[i] == true
      next
    end
    flag_arr[i] = true
    num = 1
    for j in 0...size
      if (arr_tmp[i] == arr_tmp[j]) && (flag_arr[j] != true)
        num+=1
        flag_arr[j] = true
      end
    end
  output[arr_tmp[i]] = num
  end
return output
end

puts count_words("A man, a plan, a canal -- Panama")
puts count_words ("Doo bee doo bee doo")