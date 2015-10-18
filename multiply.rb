# given two numbers as strings, return the multiplication of the numbers as strings

def multiply(num1, num2)
  n1 = 0
  n2 = 0

  i = num1.length-1
  while i >= 0 do
    n1 += num1[i] * 10^(num1.length-1-i)
  end

  i = num2.length-1
  while i >= 0 do
    n1 += num2[i] * 10^(num2.length-1-i)
  end

  product = n1 * n2

  return product.to_s

end
