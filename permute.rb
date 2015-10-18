# given an array of numbers, return all possible permutations.

def permute(nums)
  return permute_helper(nums, 0)  
end

def permute_helper(nums, start=0)
  if start == nums.length-1
    return [[nums[start]]]
  end
  
  value = nums[start]

  permutations = permute_helper(nums, start+1)
  
  results = []

  for i in 0..permutations.length-1
    for j in 0..permutations[i].length-1
      results << (permutations[i][0,j]+[value]+permutations[i][j, permutations[i].length])
    end
    results << (permutations[i] + [value])
  end
  
  return results
end

puts "Testing permute"
print permute([1,2,3])
