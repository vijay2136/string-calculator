# frozen_string_literal: true

class Calculator
  class NegativeNumbersAreNotAllowed < StandardError; end

  def self.add(string_numbers)
    return 0 if string_numbers.empty?

    delimiter, string_numbers = parse_delimiter_and_numbers(string_numbers)

    numbers = string_numbers.split(/[#{delimiter}\n]+/).reject(&:empty?).map(&:to_i)

    negative_numbers = numbers.select(&:negative?)

    if negative_numbers.any?
      raise NegativeNumbersAreNotAllowed, "negative numbers are not allowed: #{negative_numbers.join(', ')}"
    end

    numbers.sum
  end

  private_class_method def self.parse_delimiter_and_numbers(string_numbers)
    if string_numbers.start_with?("//")
      delimiter = string_numbers[2]
      string_numbers = string_numbers[4..]
    else
      delimiter = ","
    end

    [delimiter, string_numbers]
  end
end
