# My name is Brayden
# should be
# Ymay amenay isay Raydenbay

def piglatinizer(str)
  plstr = ""
  arr = str.split

  arr.each do |pig|
    if (pig.size <= 2) && (pig.slice(0) =~ /[aeiou]/)
      plstr << pig
      plstr << "ay "
    else
      l = pig.slice!(0)
      plstr << pig
      plstr << l
      plstr << "ay "
    end
  end
  plstr.downcase.capitalize
end

str = "My name is Brayden"
p piglatinizer(str)
str2 = "I need to go to the store for a box of cereal"
p piglatinizer(str2)


