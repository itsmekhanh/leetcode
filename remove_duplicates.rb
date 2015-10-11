# Given a sorted array, remove the duplicates in place such that each
# element appear only once and return the new length.

def remove_duplicates(nums)

  if nums.empty?
    return 0
  end

  replace = 1

  for i in 1..nums.length
    if nums[i] != nums[i-1] 
      nums[replace] = nums[i]
      replace += 1
    end    
  end
  
  return replace
end


