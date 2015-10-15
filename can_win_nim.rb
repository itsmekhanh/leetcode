#can_win_nim(n) - determine whether or not you can win the game of nim given the
#number of stones. You will always pick first.

def can_win_nim(n)
  if n < 4
    return true
  end

  target = n-4
  
  return !(target % 2 == 0 || target % 3 == 0 || target % 5 == 0)
end
