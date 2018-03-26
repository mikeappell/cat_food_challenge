class Siamese < Cat
  def initialize(age:)
    super
  end

  # Siamese cats need 20 cups per week, minus 2 cups per year of age,
  # to a minimum of 1 cup. Damn, they hungry.
  def food_per_week
    cups_of_food = 20
    cups_of_food -= @age * 2
    cups_of_food > 0 ? cups_of_food : 1
  end
end