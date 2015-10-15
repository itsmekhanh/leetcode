# single_number(nums) - given an array of integers, every element appears twice
# except one. Find that single number.

def single_number(nums)
  if nums.empty?
    return 0
  end

  num = nums[0]

  for i in 1..nums.length-1
    num = num^nums[i]
  end

  return num
end

puts "Testing single_number(nums)"
puts single_number([1,2,3,4,3,2,1])
