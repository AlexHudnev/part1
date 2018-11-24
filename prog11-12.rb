class Dessert
  attr_accessor :name, :calories
  def initialize (name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    calories < 200
  end

  def delicious?
    true
  end
end


class JellyBean < Dessert
 def initialize (name, calories,flavor)
   super(name,calories)
   @flavor =flavor
 end
def delicious?
  @flavor!="black licorice"
end

end


a = Dessert.new("meeet",201)
puts a.healthy?
puts a.delicious?
b = JellyBean.new("meew",100,"black licorice")
puts b.delicious?
puts b.healthy?