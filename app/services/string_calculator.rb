# app/services/string_calculator.rb
class StringCalculator

  def add(numbers)
    return 0 if numbers.blank?
    
    numbers.split(',').map(&:to_i).sum
  end
end
