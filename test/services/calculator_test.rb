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
end
