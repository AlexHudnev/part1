def max_odd(array)
  array.select!{|el| el.is_a? Numeric}
  array.select!{|el| el % 2 != 0}
  array.max
end


puts max_odd([1, 2, 3, 4, 4]) # => 3
puts max_odd([21.0, 2, 3, 4, 4]) # => 21
puts max_odd(['ololo', 2, 3, 4, [1, 2], nil]) # => 3
puts max_odd(%w[ololo fufufu]) # => nil
puts max_odd([2, 2, 4]) # => nil
