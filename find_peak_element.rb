# given an array of integers, find the index of the peak element, in which it
# is greater than its neighbors

def find_peak_element(nums)
  
  if nums.length <= 2
    return
  end

  for i in 1..nums.length-2
    if nums[i] > nums[i-1] && nums[i] > nums[i+1]
      return i
    end
  end
end
