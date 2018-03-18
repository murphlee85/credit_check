require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class TestCreditCheck < Minitest::Test
  def test_class_exists
    credit = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, credit
  end

  def test_has_credit_card_number
    credit = CreditCheck.new("4929735477250543")

    assert_equal "4929735477250543", credit.credit_number
  end

  def test_card_is_reverse_array
    credit = CreditCheck.new("4929735477250543")

    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], credit.reverse_array
  end

  def test_every_other_number_is_doubled
    credit = CreditCheck.new("4929735477250543")

    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], credit.doubled
  end

  def test_sum_of_double_digits
    credit = CreditCheck.new("4929735477250543")

    assert_equal [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8], credit.sum_double_digits
  end

  def test_sum_of_all_digits
    credit = CreditCheck.new("4929735477250543")

    assert_equal 80, credit.sum_all_digits
  end

  def test_validate
    credit = CreditCheck.new("4929735477250543")

    assert_equal true, credit.validate
  end
end
