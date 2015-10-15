# max_profit(prices) - Design an algorithm to find the maximum profit. You may
# complete as many transactions as you want, but you must sell the stock before
# buying it at a different price.

def max_profit(prices)
  i = 0
  profit = 0

  while i < prices.length do
    # find the lowest buying price
    low = prices[i]
    while i < prices.length-1 && prices[i+1] < low do
      low = prices[i+1]
      i += 1
    end

    # find the highest selling price
    high = prices[i]
    while i < prices.length-1 && prices[i+1] > high do
      high = prices[i+1]
      i += 1
    end
    profit += high - low
    i += 1
  end
  return profit
end

puts "Testing max_profit(prices)"
puts max_profit([4,3,2,1,6,7,4,10])
