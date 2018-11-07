class Dessert
  attr_accessor :name, :calories
  def initialize (name, calories) # конструктор класса.
    @name = name # переменная объекта
    @calories = calories
  end

  def healthy?
    return  self.calories < 200
  end

  def delicious?
    return true
  end
end


class JellyBean < Dessert
 def initialize (name, calories,flavor)
   super(name,calories)
   @flavor =flavor
 end
def delicious?
  return @flavor!="black licorice"
end

end


a = Dessert.new("meeet",201)
puts a.healthy?
puts a.delicious?
b = JellyBean.new("meew",100,"black licorice")
puts b.delicious?
puts b.healthy?