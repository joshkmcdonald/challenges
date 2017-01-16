# puts "please provide a number"
# num = gets.chomp.to_i

# if num % 2 == 0
#   puts "Your number is Even."
# else
#   puts "Your number is Odd."
# end


# if num.even?
#   puts "Your number is Even."
# else
#   puts "Your number is Odd."
# end


# puts "Please provide a number."
# n = gets.chomp.to_i
# puts "Please provide one more number."
# n2 = gets.chomp.to_i


# def all_the_math_things(num1, num2)
#   puts "#{num1} + #{num2} = #{num1 + num2}."
#   puts "#{num1} - #{num2} = #{num1 - num2}."
#   puts "#{num1} * #{num2} = #{num1 * num2}."
#   puts "#{num1} / #{num2} = #{num1 / num2}."
#   puts "#{num1} % #{num2} = #{num1 % num2}."
#   puts "#{num1} ** #{num2} = #{num1 ** num2}."
  
#  end

# all_the_math_things(n, n2)



puts "Please provide a number."
n = gets.chomp.to_f
puts "Please provide one more number."
n2 = gets.chomp.to_f


class Arithmetic

  def add(num1, num2)
    puts "#{num1} + #{num2} = #{num1 + num2}."
  end

  def subtract(num1, num2)
    puts "#{num1} - #{num2} = #{num1 - num2}."
  end

  def multiply(num1, num2)
    puts "#{num1} * #{num2} = #{num1 * num2}."
  end

  def divide(num1, num2)
    puts "#{num1} / #{num2} = #{num1 / num2}."
  end

  def remainder(num1, num2)
    puts "The remainder of #{num1} divided by #{num2} is #{num1 % num2}."
  end

  def exponent(num1, num2)
    puts "#{num1} ** #{num2} = #{num1 ** num2}."
  end

end


t = Arithmetic.new
t.add(n , n2)
t.subtract(n , n2)
t.multiply(n , n2)
t.divide(n , n2)
t.remainder(n , n2)
t.exponent(n , n2)










