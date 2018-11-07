def multiply_numbers(input=[])
  local = input.to_s.scan(/\d/).join.split("")
  a = 1
  if local.size == 0
    return nil
  end
  local.each do |el|
    a *= el.to_i
  end

return a
end


puts multiply_numbers() # => nil
puts multiply_numbers('ss') # => nil
puts multiply_numbers('1234') # => 24
puts multiply_numbers('sssdd34') # => 12
puts multiply_numbers(2.3) # => 6
puts multiply_numbers([5, 6, 4]) # => 120