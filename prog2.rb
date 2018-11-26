def coincidence(array = false,range = false)
  return [ ] unless array||range
  array.select{|el| range.include?(el)}
 end

print coincidence([1, 2, 3, 4, 5], (3..5))
