# spec/services/string_calculator_spec.rb
require 'rails_helper'

RSpec.describe StringCalculator do
  let(:calculator) { described_class.new }

  describe '#Add' do
    it 'returns 0 for an epmty string' do
      expect(calculator.add('')).to eq(0)
    end
  end
end
