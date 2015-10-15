# find the contiguous subarray within an array which has the largest sum.

def max_sub_array(nums)
  if nums.nil?
    return 0
  end

  if nums.length < 2
    return nums[0]
  end

  max = nums[0]
  maxEndingHere = nums[0]

  for i in 1..nums.length-1
    maxEndingHere = [maxEndingHere+nums[i], nums[i]].max
    max = [max, maxEndingHere]
  end

  return max
end
