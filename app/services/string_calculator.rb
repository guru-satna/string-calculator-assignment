# app/services/string_calculator.rb
class StringCalculator
  DELIMITER = /,|\n|;/.freeze

  def add(numbers)
    return 0 if numbers.blank?

    nums = numbers.split(DELIMITER).map(&:to_i)
    negative_nums = negative_numbers(nums)

    return nums.sum if negative_nums.empty?

    raise "Negative numbers are not allowed: #{negative_nums.join(', ')}" 
  end

  private

  def negative_numbers(nums)
    nums.select(&:negative?)
  end
end
