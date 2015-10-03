# Given an array S of n integers, are there elements a,b,c in S such that a+b+c
# = 0? Find all unique triplets in the array which gives the sum of zero.

def three_sum(nums)
  visited = {}
  results = []

  for i in 0..nums.length-1
    number = nums[i]
        
    if i > 1
      two_sums = two_sum(visited, number*-1)
      two_sums.each do |sum|
        results << (sum << number)
      end
    end

    if visited[number].nil?
      visited[number] = i
    end
  end

  return results
end

def two_sum(numbers, target)
  results = []
  numbers.each do |number, index|
    search = target - number
    if !numbers[search].nil? && numbers[search] < index
      results << [number, search]
    end
  end
  return results
end

puts "Testing three_sum()"
result = three_sum([-1,0,1,2,-1,-4])
print result
