require "minitest/autorun"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# class TestCalculator < Minitest::Test
#   def test_add
#     calculator = Calculator.new
#     assert_equal 4, calculator.add(1, 3)
#   end

#   def test_add_with_negative_numbers
#     calculator = Calculator.new
#     assert_equal -2, calculator.add(1, -3)
#   end

#   def test_subtract
#     calculator = Calculator.new
#     assert_equal 2, calculator.subtract(5, 3)
#   end

#   def test_multiply
#     calculator = Calculator.new
#     assert_equal 15, calculator.multiply(5, 3)
#   end

#   def test_divide
#     calculator = Calculator.new
#     assert_equal 2, calculator.divide(6, 3)
#   end

#   def test_square
#     calculator = Calculator.new
#     assert_equal 4, calculator.square(2)
#   end

#   def test_power
#     calculator = Calculator.new
#     assert_equal 8, calculator.power(2, 3)
#   end

#   def test_three_additions
#     calculator = Calculator.new
#     assert_equal 8, calculator.add(1, 2) + calculator.add(2, 3)
#   end

describe Calculator do
  describe "add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(2, 3)
      _(5).must_equal result
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(-1, 1)
      _(0).must_equal result
    end
  end

  describe "subtract" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(5, 3)
      _(2).must_equal result
    end
  end
  describe "multiply" do
    it "should return the product of two numbers" do
      calculator = Calculator.new
      result = calculator.multiply(5, 3)
      _(15).must_equal result
    end
  end
end
