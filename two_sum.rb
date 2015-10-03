# Given an array of integers, find two numbers such that they add up to a
# specific target number. Return an array with two non-zero indices.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  visited = {}
  
  nums.each_with_index do |number, index|
    search = target - number
    if visited[search]
      return [visited[search]+1, index+1]
    else
      visited[number] = index
    end
  end
end  
puts "Testing two_sum()"
puts two_sum([3,2,4], 6)
