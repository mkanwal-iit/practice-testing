require "minitest/autorun"

# Quarter = 25
# Dime = 10
# Nickle = 5
# Penny = 1

# def convert_to_coins(cents)
#   return [] if cents <= 0

#   collection = []
#   ammount = cents

#   while ammount > 0
#     if ammount >= Quarter
#       collection << Quarter
#    puts collection
#   return [cents]
#   if cents == 1
#     return [1]
#   end
#   if cents == 2
#     return [cents + cents]
#   end
cents = 119

def convert_to_coins(cents)
  change = []
  result = cents / 25
  change += [25] * result
  cents %= 25
  result = cents / 5
  change += [5] * result
  cents %= 5
  result = cents / 1

  change += [1] * result
  return change
  puts "change is #{change}"
end

class TestCoinMachine < Minitest::Test
  def test_one_returns_one_penny
    result = convert_to_coins(1)
    assert_equal [1], result
  end

  def test_two_return_two_penny
    result = convert_to_coins(2)
    assert_equal [1, 1], result
  end

  def test_hundred_nineteen_returns_4_quarters_3_nickles_4_pennies
    result = convert_to_coins(119)
    assert_equal [25, 25, 25, 25, 5, 5, 5, 1, 1, 1, 1], result
  end
end
