# write the code that will take a string and make this zigzag conversion given
# the string and the number of rows

def zigzag(s, num_row)
 
  if num_row == 1
    return s
  end

  # initialize buffer
  rows = []
  for i in 0..num_row-1
    rows[i] = []
  end

  index = 0
  reverse = false

  for i in 0..s.length-1
    print "index: #{index}, #{s[i]}\n"
    rows[index] << s[i]
  
    if !reverse
      index += 1
    else
      index -= 1
    end
    
    if index == num_row
      reverse = true
      index = num_row-2
    elsif index < 0
      reverse = false
      index = 1
    end
  end

  string = ""
  
  rows.each do |row|
    row.each do |letter|
      string += letter
    end
  end

  return string
end

puts "Testing zigzag()"
puts zigzag("ABCDE",2)
