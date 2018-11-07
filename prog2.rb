def coincidence(array = false,range = false)
out = []
  if array && range
    array.each do |el|
      if range.include?(el)
      out.push(el)
     end
   end
   end
   return out
 end

puts coincidence( )
