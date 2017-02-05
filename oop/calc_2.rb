# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator

  include  SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

calculation = FancyCalculator.new

p calculation.add(22, 33)
p calculation.subtract(2, 1)
p calculation.multiply(3, 2)
p calculation.divide(9, 3)
p calculation.square_root(9)