def max_odd(array)
  max = nil
  flag = false

  array.each do |el|
    if (el.class == Integer)||(el.class == Float)
    if ((el %2)!=0)&&(flag == false)
      max = el
      flag = true
    elsif ((el %2)!=0)&&(flag == true)&&(el>max)
      max = el
    end
  end
end
  return max
end


puts max_odd([1, 2, 3, 4, 4]) # => 3
puts max_odd([21.0, 2, 3, 4, 4]) # => 21
puts max_odd(['ololo', 2, 3, 4, [1, 2], nil]) # => 3
puts max_odd(%w[ololo fufufu]) # => nil
puts max_odd([2, 2, 4]) # => nil
