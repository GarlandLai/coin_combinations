require ('pry')

class Calcu
  attr_reader(:quarters, :dimes, :nickels, :pennies)
  def initialize(amount)
    @amount = amount
  end
  def count_quart
    @quarters = @amount / 25
    @remainder = @amount % 25
  end
  def count_dime
    @dimes = @remainder / 10
    @remainder2 = @remainder % 10
  end
  def count_nickels
    @nickels = @remainder2 / 5
    @pennies = @remainder % 5
  end
  def total
    p "You have: #{@quarters} quarters, #{@dimes} dimes,#{@nickels} nickels, #{@pennies} pennies."
  end
end

# calc = Calcu.new(99)
# calc.count_quart
# calc.count_dime
# calc.count_nickels
#
#
# calc.quarters
# calc.dimes
# calc.nickels
# calc.pennies

puts "How many cents do you have?"
amount = gets.to_i
check = Calcu.new(amount)
check.count_quart
check.count_dime
check.count_nickels
p check.total
