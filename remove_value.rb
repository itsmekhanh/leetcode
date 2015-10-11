# Given an array and a value, remove all instances of that value in place and return
# the new length.

def remove_elements(nums, val)
  left = 0

  for i in 0..nums.length-1
    if nums[i] != val
      nums[left] = nums[i]
      left += 1
    end
  end
  return left
end
