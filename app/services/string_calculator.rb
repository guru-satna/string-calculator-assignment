# app/services/string_calculator.rb
class StringCalculator
  DELIMITER = /,|\n|;/

  def add(numbers)
    return 0 if numbers.blank?
    
    numbers.split(DELIMITER).map(&:to_i).sum
  end
end
