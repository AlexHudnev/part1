def coincidence(array = false,range = false)
  return [ ] if !array|!range
  array.select{|el| range.include?(el)}
 end

print coincidence()
