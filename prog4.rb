def sort_array(array)
  minimal = array.min
  maximum = array.max
 array.map do |el|
        if el == maximum
           minimal
        elsif el == minimal
           maximum
        else
              el
        end
 end.push(minimal)

end


print sort_array([]) # => []
print sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
print sort_array([1]) # => [1, 1]
print sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1]
