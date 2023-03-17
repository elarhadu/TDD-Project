require 'rspec'

require_relative '../solver'

describe Solver do
  describe '#factorial' do
    it 'returns 1 for 0' do
      expect(Solver.factorial(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(Solver.factorial(1)).to eq(1)
    end

    it 'returns 6 for 3' do
      expect(Solver.factorial(3)).to eq(6)
    end

    it 'raises an ArgumentError for negative numbers' do
      expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns an empty string for an empty string' do
      expect(Solver.reverse('')).to eq('')
    end

    it 'returns the reversed string for a non-empty string' do
      expect(Solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" for multiples of 3' do
      expect(Solver.fizzbuzz(6)).to eq('fizz')
    end

    it 'returns "buzz" for multiples of 5' do
      expect(Solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" for multiples of 3 and 5' do
      expect(Solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for non-multiples of 3 and 5' do
      expect(Solver.fizzbuzz(7)).to eq('7')
    end
  end
end
