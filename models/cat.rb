class Cat
  def initialize(age:)
    @age = age
    raise 'Error: negative ages make me a sad kitty :(' if @age < 0
  end

  def food_per_week
    raise "Error: 'Cat' should never be instantiated; please create one of its breeds instead"
  end
end
