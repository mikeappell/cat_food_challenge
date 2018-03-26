class BenjaminButton < Cat
  def initialize(age:)
    super(age: age)
  end

  # Reverse-growth cats (also known as Benjamin Button cats) grow more youthful
  # as time passes, so their metabolism increases with age. They need 1 cup of
  # food per week plus 1 cup for each year they age (so a 7-year old Reverse-growth
  # cat needs 8 cups per week.)
  #
  # On an aside, I'm _really_ hoping there's an upper limit to their growth here...
  def food_per_week
    cups_of_food = 1
    cups_of_food + @age
  end
end