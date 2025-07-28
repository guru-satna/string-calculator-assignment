# app/services/string_calculator.rb
class StringCalculator
  DELIMITER = /,|\n|;/

  def add(numbers)
    return 0 if numbers.blank?
    
    nums = numbers.split(DELIMITER).map(&:to_i)
    negative_nums = nums.select(&:negative?)
    return nums.sum if negative_nums.empty?
    raise "Negative numbers are not allowed: #{negative_nums.join(', ')}" 
  end
end
