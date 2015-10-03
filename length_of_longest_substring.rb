# Given a string, find the length of the longest substring without repeating
# characters.
# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
  if s.length == 0 
    return 0
  end

  longest = 1
  count = 1
  visited = {s[0]=>0}
  start = 0

  for i in 1..s.length-1
    if visited[s[i]].nil?
      visited[s[i]] = i
    else
      if visited[s[i]] >= start
        start = visited[s[i]]+1
      end
      visited[s[i]] = i
    end
   
    count = i-start+1
    if count > longest
      longest = count
    end
  end
  return longest
end

puts "Testing length_of_longest_substring()"
puts length_of_longest_substring("")
