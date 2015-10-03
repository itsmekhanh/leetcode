# write a function that returns the longest common prefix in an array of strings

def longest_common_prefix(strings)
  longest = strings[0]

  for s in 1..strings.length-1
    str = strings[s]
    prefix = ""
    
    for i in 0..str.length-1
      
      if longest[i].nil? && i > 0
        break
      elsif longest[i] != str[i]
        break
      end

      prefix += str[i]
    end

    if prefix.length == 0
      return ""
    end
    if prefix.length < longest.length
      longest = prefix
    end
  
  end
  return longest
end

puts "Testing longest_common_prefix()"
puts longest_common_prefix(["ab","abc","c"])
