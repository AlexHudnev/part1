def combine_anagrams(words_array)
 words_array.group_by { |el| el.downcase.chars.sort }.values
end

     print combine_anagrams(%w[cars for potatoes racs four scar creams scream])
