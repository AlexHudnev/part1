require 'active_support/all'
def date_in_future(integer)
  return (Time.now + integer.days).strftime("%d-%m-%Y %H:%M:%S") if integer.is_a? Integer
  Time.now.strftime("%d-%m-%Y %H:%M:%S")
end
puts date_in_future([]) # => текущая дата
print date_in_future(2) # => текущая дата + 2 дня