# Write an efficient algorithm that searches for an element in an m x n matrix.
# The integers in each row are sorted from left to right
# The integers in each column are sorted from top to bottom

def search_matrix(matrix, target)
  # start from top-right
  row = 0
  col = matrix[row].length-1

  while row < matrix.length && col >= 0 do
    value = matrix[row][col]

    if value == target
      return true
    elsif target < value
      col -= 1
    else
      row += 1
    end
  end
  return false
end

puts "Testing search_matrix()"
matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]]

puts search_matrix(matrix, 5)
