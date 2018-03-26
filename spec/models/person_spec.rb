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

  context 'more complex cat combinations' do
    context 'tabbies (3 and 7), siamese (1, 5 and 11) and benji (5)' do
      let(:cats) do
        [
          Tabby.new(age: 3),
          Tabby.new(age: 7),
          Siamese.new(age: 1),
          Siamese.new(age: 5),
          Siamese.new(age: 11),
          BenjaminButton.new(age: 5)
        ]
      end

      it 'should equal 45' do
        expect(result).to eq 45
      end
    end

    context 'tabbies (1, 10 and 13), siamese (4 and 9) and benji (5 and 13)' do
      let(:cats) do
        [
          Tabby.new(age: 1),
          Tabby.new(age: 10),
          Tabby.new(age: 13),
          Siamese.new(age: 4),
          Siamese.new(age: 9),
          BenjaminButton.new(age: 5),
          BenjaminButton.new(age: 13)
        ]
      end

      it 'should equal 45' do
        expect(result).to eq 45
      end
    end
  end
end
