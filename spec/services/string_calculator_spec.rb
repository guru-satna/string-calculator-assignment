# spec/services/string_calculator_spec.rb
require 'rails_helper'

RSpec.describe StringCalculator do
  let(:calculator) { described_class.new }

  describe '#Add' do
    it 'returns 0 for an epmty string' do
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number for a single input number' do
      expect(calculator.add('1')).to eq(1)
    end

    it 'returns the sum of two comma-seprated number' do
      expect(calculator.add('1,2')).to eq(3)
    end

    it 'returns the sum of multiple comma-seprated number' do
      expect(calculator.add('1, 2, 3')).to eq(6)
    end

    it 'handles new lines between numbers' do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end
  end
end
