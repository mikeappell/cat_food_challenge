require 'spec_helper'

# TODO: Test for negative age
RSpec.describe "Cat" do
  it "Can't have a negative age" do
    expect { Cat.new(age: -2) }.to raise_error RuntimeError, /Negative ages/
  end

  it "Doesn't allow for ages > 100" do
    expect { Cat.new(age: 105) }.to raise_error RuntimeError, /are you a god/
  end

  describe "#food_per_week" do
    it "Calculates the proper food per week for a newborn tabby cat" do
      expect(Tabby.new(age: 0).food_per_week).to eq 10
    end

    it "Calculates the proper food per week for a young tabby cat" do
      expect(Tabby.new(age: 5).food_per_week).to eq 5
    end

    it "Calculates the proper food per week for an old tabby cat" do
      expect(Tabby.new(age: 15).food_per_week).to eq 1
    end

    it "Calculates the proper food per week for a newborn siamese cat" do
      expect(Siamese.new(age: 0).food_per_week).to eq 20
    end

    it "Calculates the proper food per week for a young siamese cat" do
      expect(Siamese.new(age: 4).food_per_week).to eq 12
    end

    it "Calculates the proper food per week for an old siamese cat" do
      expect(Siamese.new(age: 13).food_per_week).to eq 1
    end

    it "Calculates the proper food per week for a newborn benjamin button cat" do
      expect(BenjaminButton.new(age: 0).food_per_week).to eq 1
    end

    it "Calculates the proper food per week for a young benjamin button cat" do
      expect(BenjaminButton.new(age: 3).food_per_week).to eq 4
    end

    it "Calculates the proper food per week for an old benjamin button cat" do
      expect(BenjaminButton.new(age: 12).food_per_week).to eq 13
    end

    it "Raises an error for parent Cat class" do
      expect { Cat.new(age: 5).food_per_week}.to raise_error RuntimeError, /should never be instantiated/
    end
  end
end