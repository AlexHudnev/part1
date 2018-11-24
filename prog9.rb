def connect_hashes(hash1, hash2)
  sum_arr1 = (hash1.values).inject(0){ |result, elem| result + elem }
  sum_arr2 = (hash2.values).inject(0){ |result, elem| result + elem }
  a,b = hash1, hash2 if sum_arr1>sum_arr2
  a,b = hash2, hash1 if sum_arr1<=sum_arr2
  a.select!{|key ,val| val>=10}
  a.merge!(b.select!{|key ,val| val >=10 && !(a.keys.include?(key)) })
 (a.sort_by {|elem| elem[1]}).to_h
end

puts connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 })
puts connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 })
puts connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 })

