require './cat'
require './person'
require './calculator'

RSpec.describe do

  let(:result) { Calculator.new(person: person).calculate }
  let(:person) { Person.new(cats: cats) }

  context 'tabby age 5 and siamese age 0' do

    let(:cats) do
      [
        Cat.new(breed: 'tabby', age: 5),
        Cat.new(breed: 'siamese', age: 0)
      ]
    end

    it 'should equal 25' do
      expect(result).to eq(25)
    end
  end

  context 'tabby age 15 and reverse growth age 15' do

    let(:cats) do
      [
        Cat.new(breed: 'reverse_growth', age: 15),
        Cat.new(breed: 'tabby',          age: 15)
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
