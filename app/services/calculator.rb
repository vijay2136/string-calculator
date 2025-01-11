# frozen_string_literal: true

class Calculator
  class NegativeNumbersAreNotAllowed < StandardError; end

  def self.add(string_numbers)
    return 0 if string_numbers.empty?

    if string_numbers.start_with?("//")
      delimiter = string_numbers[2]
      string_numbers = string_numbers[4..-1]
    else
      delimiter = ","
    end

    numbers = string_numbers.split(/[#{delimiter}\n]+/).reject(&:empty?).map(&:to_i)

    negative_numbers = numbers.select { |number| number < 0 }

    raise NegativeNumbersAreNotAllowed, "negative numbers are not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?

    numbers.sum
  end
end
