class Cat
  def initialize(age:)
    @age = age
  end

  def food_per_week
    raise "Error: 'Cat' should never be instantiated; please create one of its breeds instead"
  end
end
