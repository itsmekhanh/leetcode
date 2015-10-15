# Given a string s and a dictionary of words dict, determine if s can segmented
# using the words in dict

def word_break(s, dict)
  indices = {}

  for i in 0..dict.length-1
    pos = s.index(dict[i])
    indices[dict[i]] = pos
  end

  pos = 0
  
end
