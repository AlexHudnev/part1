
module One
  def palindrome?
str_tmp =  self.to_s.downcase.scan(/(\w+|[а-я]+)/).join
str_tmp.reverse == str_tmp
  end
end


class String
include One
end

class Array
  include One
end
