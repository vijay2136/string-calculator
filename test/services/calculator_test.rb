# frozen_string_literal: true

require "test_helper"

class CalculatorTest < ActiveSupport::TestCase
  def test_returns_0_for_empty_string
    assert_equal 0, Calculator.add("")
  end

  def test_returns_the_same_number_for_single_number
    assert_equal 1, Calculator.add("1")
  end

  def test_returns_sum_for_two_numbers
    assert_equal 3, Calculator.add("1,2")
  end

  def test_returns_sum_for_multiple_numbers
    assert_equal 55, Calculator.add("1,2,3,4,5,6,7,8,9,10")
  end

  def test_returns_sum_for_multiple_numbers_with_new_line
    assert_equal 6, Calculator.add("1\n2,3")
  end

  def test_returns_sum_correctly_even_if_the_string_ends_with_a_new_line
    assert_equal 1, Calculator.add("1,\n")
    assert_equal 3, Calculator.add("1,\n2,\n")
  end

  def test_supports_custom_delimiter
    assert_equal 12, Calculator.add("//;\n1;\n2\n4\n5")
  end
end
