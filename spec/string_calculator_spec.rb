require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:subject) { described_class.new }
  
  describe '#add' do
    shared_examples 'returns the sum of numbers' do |input, expected|
      it "returns #{expected} for input '#{input}'" do
        expect(subject.add(input)).to eq(expected)
      end
    end

    include_examples 'returns the sum of numbers', '', 0
    include_examples 'returns the sum of numbers', '3', 3
    include_examples 'returns the sum of numbers', '100', 100
    include_examples 'returns the sum of numbers', '3,5', 8
    include_examples 'returns the sum of numbers', '6, 8', 14
    include_examples 'returns the sum of numbers', '1,3,5', 9
    include_examples 'returns the sum of numbers', '6, 8, 7, 0, 1,  9', 31
    include_examples 'returns the sum of numbers', "1\n2,3", 6
    include_examples 'returns the sum of numbers', "//;\n1;2", 3
    include_examples 'returns the sum of numbers', "//;1;2\n", 3

    context 'when the string contains negative numbers' do
      it 'raises runtime erorr with proper message' do
        expect { subject.add("//;\n-1;-2") }.to raise_error(RuntimeError, 'negative numbers not allowed -1, -2')
      end
    end
  end
end
