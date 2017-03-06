def leap?(yr)
  if yr % 400 == 0
    true
  elsif (yr % 4 == 0) && (yr % 100 != 0)
    true
  else
    false
  end
end



def print_leap(num)
  leap = 2020
  leap_array = []
  not_leap_array = []

  loop do
    break if leap_array.length == num

    if leap?(leap)
      leap_array << leap
      leap += 4
    else
      not_leap_array << "#{leap} is not a leap year."
      leap += 4
    end 
  end
  puts leap_array
  puts not_leap_array
end

print_leap(1000)
