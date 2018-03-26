class Person
  attr_accessor :cats

  def initialize(cats:)
    @cats = cats
  end

  def calculate_food_for_all_cats
    self.cats.reduce(0) { |sum, cat| sum + cat.food_per_week }
  end
end