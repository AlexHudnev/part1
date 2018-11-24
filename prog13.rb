
class String
def palindrome?()
  str_tmp =  self.downcase.scan(/(\w+|[а-я]+)/).join
  str_tmp.reverse == str_tmp
end
end

print "Please input: "
a =  gets.chomp
puts a.palindrome?