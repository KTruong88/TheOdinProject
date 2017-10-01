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
