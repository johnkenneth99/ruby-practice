# https://www.theodinproject.com/lessons/ruby-stock-picker

def stock_picker(prices)
  result = nil
  current_profit = 0
  left = 0
  right = 1

  while right < prices.length
   if prices[right] < prices[left]
    left = right
   else
    profit = prices[right] - prices[left]
    
    if profit > current_profit 
      result = [left, right]
      current_profit = profit
    end
   end

    right += 1
  end
  
  result
end

puts stock_picker [17,3,6,9,15,8,6,1,10]