# Find two lines, which together with x-axis forms a container, such that the
# container contains the most water.

# n^2 solution
def max_area(height)
  max = 0

  left = 0
  right = height.length-1

  while left < right
    length = right-left

    area = [height[left], height[right]].min * length

    if area > max
      max = area
    end

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  return max
end

puts "Testing max_area()"
puts max_area([1,1,3,4])
