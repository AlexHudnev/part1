require "active_support"

def date_in_future(integer)
  t = Time.now
  if integer.class == Integer
    t += (60 * 60 * 24) * integer
  end
  return t.strftime("%d-%m-%Y %H:%M:%S")
end

puts date_in_future([]) # => текущая дата
print date_in_future(2) # => текущая дата + 2 дня
