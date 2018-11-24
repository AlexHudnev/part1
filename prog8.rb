def multiply_numbers(input=[])
  locall = input.to_s.scan(/\d/).join.split('')
  return nil if locall.size == 0
  locall.inject(1){|ac , el| ac * el.to_i}
end

puts multiply_numbers() # => nil
puts multiply_numbers('ss') # => nil
puts multiply_numbers('1234') # => 24
puts multiply_numbers('sssdd34') # => 12
puts multiply_numbers(2.3) # => 6
puts multiply_numbers([5, 6, 4]) # => 120