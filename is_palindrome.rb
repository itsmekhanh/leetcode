# determine whether an integer is a palindrome.

def is_palindrome(x)
  if x < 0 || (x != 0 && x%10 == 0) 
    return false
  end
  
  reverse = 0

  while reverse < x do
    reverse = reverse*10 + x%10
    x = x/10
  end

  return x == reverse || reverse/10 == x
end
