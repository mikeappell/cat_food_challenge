class Cat
  def initialize(age:)
    @age = age
    raise 'Negative ages make me a sad kitty :(' if @age < 0
    raise 'Are... are you a god?' if @age > 100
  end

  def food_per_week
    raise "'Cat' should never be instantiated; please create one of its breeds instead"
  end
end
