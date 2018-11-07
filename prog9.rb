def connect_hashes(hash1, hash2)
  hash3 = Hash.new
  sum_arr1 = (hash1.values).inject(0){ |result, elem| result + elem }
  sum_arr2 = (hash2.values).inject(0){ |result, elem| result + elem }
  if sum_arr1>sum_arr2
    a = hash1
    b = hash2
  else
    b = hash1
    a = hash2
    end
    a.each do |key, value|
      if value >= 10
        hash3[key] = value
      end
    end
    b.each do |key, value|
      if value>=10 && !(hash3.keys.include?(key))
        hash3[key]=value
      end
    end




return (hash3.sort_by {|elem| elem[1]}).to_h
end

puts connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 })
puts connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 })
puts connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 })
#TODO ALL