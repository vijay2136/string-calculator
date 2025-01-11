# frozen_string_literal: true

require "test_helper"

class CalculatorTest < ActiveSupport::TestCase
  def test_returns_0_for_empty_string
    assert_equal 0, Calculator.add("")
  end
end
