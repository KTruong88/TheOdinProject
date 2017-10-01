# Implement a method #stock_picker that takes in an
# array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best
# day to buy and the best day to sell. Days start at 0.

# * You need to buy before you can sell
# * Pay attention to edge cases like when the lowest day
#   is the last day or the highest day is the first day.

def stock_picker(price_array)
  best_pick = [0, 0]
  last_day = price_array.length - 1

  (0..last_day).each do |buy_day|
    (buy_day..last_day).each do |sell_day|

      test_sale = price_array[sell_day] - price_array[buy_day]
      current_best_sale = price_array[best_pick[1]] - price_array[best_pick[0]]

      if test_sale > current_best_sale
        best_pick = [buy_day, sell_day]
      end
    end
  end
  best_pick
end
