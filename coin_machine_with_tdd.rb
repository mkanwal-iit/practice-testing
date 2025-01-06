require "minitest/autorun"

def convert_to_coins(cents)
  coins = []
  denominations = [25, 10, 5, 1]
  denominations.each do |denomination|
    while cents >= denomination
      coins << denomination
      cents = cents - denomination
    end
  end
  return coins
end

class TestCoinMachine < Minitest::Test
  def test_one_returns_one_penny
    result = convert_to_coins(1)
    assert_equal [1], result
  end

  def test_two_returns_two_pennies
    result = convert_to_coins(2)
    assert_equal [1, 1], result
  end

  def test_five_returns_one_nickel
    result = convert_to_coins(5)
    assert_equal [5], result
  end

  def test_ten_returns_one_dime
    result = convert_to_coins(10)
    assert_equal [10], result
  end

  def test_twentyfive_returns_one_quarter
    result = convert_to_coins(25)
    assert_equal [25], result
  end

  def test_onenineteen_returns_the_right_coins
    result = convert_to_coins(119)
    assert_equal [25, 25, 25, 25, 10, 5, 1, 1, 1, 1], result
  end
end
