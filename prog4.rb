def sort_array(array)
  minimal = array.min
  maximum = array.max
  size = array.size
  for i in 0..size
    if array[i] == maximum
      array[i] = minimal
    elsif array[i] == minimal
      array[i] = maximum
    end
    end
    array.push(minimal)
    return array.compact 
end


print sort_array([]) # => []
print sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
print sort_array([1]) # => [1, 1]
print sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1]
