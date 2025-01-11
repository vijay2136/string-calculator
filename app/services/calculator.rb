# frozen_string_literal: true

class Calculator
  def self.add(string_numbers)
    return 0 if string_numbers.empty?

    if string_numbers.start_with?("//")
      delimiter = string_numbers[2]
      string_numbers = string_numbers[4..-1]
    else
      delimiter = ","
    end

    string_numbers.split(/[#{delimiter}\n]+/).reject(&:empty?).map(&:to_i).sum
  end
end
