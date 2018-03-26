class Tabby < Cat
  def initialize(age:)
    super
  end

  # Tabby cats need 10 cups per week, minus 1 cup per year of age, to a minimum
  # of 1 cup. So a 0-year old (newborn) Tabby needs 10 cups, a 5-year old needs
  # 5 cups, and a 15-year old needs 1 cup.
  def food_per_week
    cups_of_food = 10
    cups_of_food -= @age
    cups_of_food > 0 ? cups_of_food : 1
  end
end