require 'to_words'

# Given an number 0 to 999,999,999,999, spell out that number in English
def num_to_string(number)
  case number
    when '1'
      "one "
    when '2'
      "two "
    when '3'
      "three "
    when '4'
      "four "
    when '5'
      "five "
    when '6'
      "six "
    when '7'
      "seven "
    when '8'
      "eight "
    when '9'
      "nine "
    when '10'
      "ten "
    when '11'
      "eleven "
    when '12'
      "twelve "
    when '13'
      "thirteen "
    when '14'
      "fourteen "
    when '15'
      "fifteen "
    when '16'
      "sixteen "
    when '17'
      "seventeen "
    when '18'
      "eighteen "
    when '19'
      'nineteen '
    when '20'
      "twenty "
    when '30'
      "thirty "
    when '40'
      "fourty "
    when '50'
      "fifty "
    when '60'
      "sixty "
    when '70'
      "seventy "
    when '80'
      "eighty "
    when '90'
      "ninty "
    else
      ""
    end
end


def print_num_to_string(number)
  num = number
  num_length = number.length
  string = ""

  if num_length <= 2
    string << num_to_string(num)
  elsif num_length == 3
    string << num_to_string(num.split('').slice!(0))
    string << 'hundred'
    p num
  end
  p string
end

p (999_999_999_999).to_words

