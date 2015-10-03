# Find the median of two sorted arrays nums1 nums2

def find_median_sorted_arrays(nums1, nums2)

  sorted = Array.new(nums1.length + nums2.length)

  n1 = 0
  n2 = 0

  while !nums1[n1].nil? && !nums2[n2].nil? do  
    if nums1[n1] < nums2[n2]
      sorted[n1+n2] = nums1[n1]
      n1 += 1
    else
      sorted[n1+n2] = nums2[n2]
      n2 += 1
    end
  end

  while !nums1[n1].nil? do
    sorted[n1+n2] = nums1[n1]
    n1 += 1
  end

  while !nums2[n2].nil? do
    sorted[n2+n1] = nums2[n2]
    n2 += 1
  end

  middle = (sorted.length/2).floor
  if sorted.length % 2 == 0
    return (sorted[middle]+sorted[middle-1])/2.0
  else
    return sorted[middle]
  end

end

def find_median_sorted_arrays(a, b, y, z)
  target = (a.length+b.length)/2

  if a[y] > b[z]
    if (y-1 + z) == target
      return y
    else
      
    end
  else

  end
end

puts "Testing find_median_sorted_arrays()"
puts find_median_sorted_arrays([1],[2,3,4,5,6])
