require 'spec_helper'

# TODO: Test for negative age
RSpec.describe "Cat" do
  describe "#food_per_week" do
    let(:newborn_tabby) { Tabby.new(age: 0) }
    let(:young_tabby) { Tabby.new(age: 5) }
    let(:old_tabby) { Tabby.new(age: 15) }
    let(:newborn_siamese) { Siamese.new(age: 0) }
    let(:young_siamese) { Siamese.new(age: 4) }
    let(:old_siamese) { Siamese.new(age: 13) }
    let(:newborn_benji) { BenjaminButton.new(age: 0) }
    let(:young_benji) { BenjaminButton.new(age: 3) }
    let(:old_benji) { BenjaminButton.new(age: 12) }
    let(:non_subclassed_cat) { Cat.new(age: 5) }

    it "Calculates the proper food per week for a newborn tabby cat" do
      expect(newborn_tabby.food_per_week).to eq 10
    end

    it "Calculates the proper food per week for a young tabby cat" do
      expect(young_tabby.food_per_week).to eq 5
    end

    it "Calculates the proper food per week for an old tabby cat" do
      expect(old_tabby.food_per_week).to eq 1
    end

    it "Calculates the proper food per week for a newborn siamese cat" do
      expect(newborn_siamese.food_per_week).to eq 20
    end

    it "Calculates the proper food per week for a young siamese cat" do
      expect(young_siamese.food_per_week).to eq 12
    end

    it "Calculates the proper food per week for an old siamese cat" do
      expect(old_siamese.food_per_week).to eq 1
    end

    it "Calculates the proper food per week for a newborn benjamin button cat" do
      expect(newborn_benji.food_per_week).to eq 1
    end

    it "Calculates the proper food per week for a young benjamin button cat" do
      expect(young_benji.food_per_week).to eq 4
    end

    it "Calculates the proper food per week for an old benjamin button cat" do
      expect(old_benji.food_per_week).to eq 13
    end

    it "Raises an error for parent Cat class" do
      expect { non_subclassed_cat.food_per_week}.to raise_error RuntimeError, /should never be instantiated/
    end
  end
end