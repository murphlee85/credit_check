class CreditCheck
  attr_reader :credit_number
  def initialize(credit_number)
    @credit_number = credit_number
  end

  def reverse_array
    @credit_number.to_i.digits
  end

  def doubled
    reverse_array.map.with_index do |number, index|
      if index.odd?
        number * 2
      else
        number
      end
    end
  end

  def sum_double_digits
    doubled.map do |number|
        number.digits.sum
    end
  end

  def sum_all_digits
    sum = 0
    sum_double_digits.each do |number|
      sum += number
    end
    sum
  end

  def validate
    if sum_all_digits % 10 == 0
    true
    else
    false
    end
    end
end





# card_number = "4929735477250543"
#
# valid = false

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
