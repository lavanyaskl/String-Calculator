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
  end
end
