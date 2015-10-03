# Implement atoi to convert a string to an integer

def my_atoi(str)
  values = {
    '0'=>0,
    '1'=>1,
    '2'=>2,
    '3'=>3,
    '4'=>4,
    '5'=>5,
    '6'=>6,
    '7'=>7,
    '8'=>8,
    '9'=>9
  }

  str.strip!
  sum = 0
  negative = false
  for i in 0..str.length-1
    if str[i] == "+" && i == 0
      next
    elsif str[i] == "-" && i == 0
      negative = true
      next
    end
    
    if values[str[i]].nil?
      break
    else
      sum = (sum*10)+values[str[i]]  
    end
  end

  if negative
    return sum*-1
  else
    return sum
  end
end

puts "Testing my_atoi()"
puts my_atoi("39")
puts my_atoi("4me")
puts my_atoi("-+1")
