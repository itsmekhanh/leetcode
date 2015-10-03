# Given n pairs of parentheses, write a function to generate all combinations
# of well-form parentheses.

def generate_parenthesis(n)
  if n == 0
    return [""]
  end
  return paren(n, n)
end

def paren(left, right)
  parentheses = []

  if left > 0
    p1 = paren(left-1, right)
    
    p1.each do |p|
      parentheses << ("("+p)
    end
  end
  
  if left < right
    p2 = paren(left, right-1)

    if p2.empty?
      parentheses << ")"
    else
      p2.each do |p|
        parentheses << (")"+p)
      end
    end
  end

  return parentheses
end

puts "Testing generate_parentheses"
print generate_parenthesis(0)

