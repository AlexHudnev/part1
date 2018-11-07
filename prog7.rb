def combine_anagrams(words_array)
  tmp_arr = []

  size = words_array.size
  flags = Array.new(size)

  for i in 0..size-1

    if flags[i] == true
      next
    end

    local_arr = []
    local_arr.push(words_array[i])
    flags[i] = true

        for j in 0..size-1
          a= words_array[i].split("").sort
          b = words_array[j].split("").sort

         if (a == b)&& (flags[j] != true)
           local_arr.push(words_array[j])
           flags[j] = true
         end
       end
         tmp_arr.push(local_arr)

     end
       return tmp_arr
     end

     print combine_anagrams(%w[cars for potatoes racs four scar creams scream])
