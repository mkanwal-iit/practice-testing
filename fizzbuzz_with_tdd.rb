# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”.
require "minitest/autorun"

def fizzbuzz_converter(number)
  return "FizzBuzz" if number % 15 == 0
  return "Fizz" if number % 3 == 0
  return "Buzz" if number % 5 == 0
  return number
end

number = 1
while number <= 100
  puts fizzbuzz_converter(number)
  number += 1
end

class TestFizzbuzz < Minitest::Test
  def test_one_returns_one
    result = fizzbuzz_converter(1)
    assert_equal 1, result
  end

  def test_two_returns_two
    result = fizzbuzz_converter(2)
    assert_equal 2, result
  end

  def test_three_returns_fizz
    result = fizzbuzz_converter(3)
    assert_equal "Fizz", result
  end

  def test_five_returns_buzz
    result = fizzbuzz_converter(5)
    assert_equal "Buzz", result
  end

  def test_six_returns_fizz
    result = fizzbuzz_converter(6)
    assert_equal "Fizz", result
  end

  def test_ten_returns_buzz
    result = fizzbuzz_converter(10)
    assert_equal "Buzz", result
  end

  def test_fifteen_returns_fizzbuzz
    result = fizzbuzz_converter(15)
    assert_equal "FizzBuzz", result
  end
end
