require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:subject) { described_class.new }
  
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add('')).to eq(0)
    end

    context 'when the string contains a number' do
      it 'returns the given value from string' do
        expect(subject.add('3')).to eq(3)
      end

      it 'returns the given value from string' do
        expect(subject.add('100')).to eq(100)
      end
    end

    context 'when the string contains 2 numbers separated by comma' do
      it 'returns the sum of the numbers' do
        expect(subject.add('3,5')).to eq(8)
      end

      it 'returns the sum of the numbers' do
        expect(subject.add('6, 8')).to eq(14)
      end
    end

    context 'when the string contains many numbers separated by comma' do
      it 'returns the sum of the numbers' do
        expect(subject.add('1,3,5')).to eq(9)
      end

      it 'returns the sum of the numbers' do
        expect(subject.add('6, 8, 7, 0, 1,  9')).to eq(31)
      end
    end

    context 'when the string contains many numbers separated by comma and \n' do
      it 'returns the sum of the numbers' do
        expect(subject.add("1\n2,3")).to eq(6)
      end
    end
  end
end
