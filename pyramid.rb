# generate a square matrix where the outer layer starts with 1, 2, 3...
# and so forth, given an integer N

def pyramid(n)
  arr = Array.new(n)

  for i in 0..arr.length-1
    arr[i] = Array.new(n)
  end

  for y in 0..n/2
    if y == n/2
      if arr[y][y] == nil?
        arr[y][y] = y+1
      end
      break
    end
    for x in y..n-2-y
      arr[y][x] = y+1
      arr[x][n-1-y] = y+1
      arr[n-1-y][n-1-y-x] = y+1
      arr[n-1-y-x][y] = y+1
    end
  end

  for a in 0..arr.length-1
    for b in 0..arr[a].length-1
      print "[#{arr[a][b]}]"
    end
    print "\n"
  end

  return arr
end

puts "Testing pyramid()"
pyramid(4)
pyramid(5)
