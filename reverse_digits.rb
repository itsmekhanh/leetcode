# Reverse digits of an integer

def reverse_digits(x)
  sum = 0
  negative = if x < 0 then true else false end

  x = x.abs
  while x > 0 do
    sum = (sum*10)+(x%10)
    x = x/10
  end

  if negative
    return sum * -1
  else
    return sum
  end
end

puts "Testing reverse(x)"
puts reverse_digits(-1)
