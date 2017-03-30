


def sum_of_digits_parser(num)
  num.split('').map {|x| x if x =~ (/[0-9]/)}.compact
end


def do_it(sum)
  if sum.to_s.split('').length > 1
    sum_of_digits(sum.to_s.split('').join)
  end
end


def sum_of_digits(num)
  array = sum_of_digits_parser(num).flatten
  new_array = array.map {|x| x.to_i }
  sum = new_array.sum
  p sum

  do_it(sum)
end




p sum_of_digits('999,999,999,999')