# frozen_string_literal: true

class Calculator
  def self.add(string_numbers)
    return 0 if string_numbers.empty?

    string_numbers
      .gsub(/\n/, ',')
      .split(',')
      .reject(&:empty?)
      .map(&:to_i)
      .sum
  end
end
