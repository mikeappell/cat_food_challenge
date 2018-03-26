require 'spec_helper'

RSpec.describe do
  let(:person) { Person.new(cats: cats) }
  let(:result) { person.calculate_food_for_all_cats }

  context 'tabby age 5 and siamese age 0' do
    let(:cats) do
      [
        Tabby.new(age: 5),
        Siamese.new(age: 0)
      ]
    end

    it 'should equal 25' do
      expect(result).to eq(25)
    end
  end

  context 'tabby age 15 and reverse growth age 15' do
    let(:cats) do
      [
        BenjaminButton.new(age: 15),
        Tabby.new(age: 15)
      ]
    end

    it 'should equal 17' do
      expect(result).to eq(17)
    end
  end

  context 'no cats' do
    let(:cats) { [] }

    it 'should equal 0' do
      expect(result).to eq(0)
    end
  end
end
