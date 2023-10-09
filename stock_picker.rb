# Return a pair of days representing the best day to buy and sell given an array of stock prices, one for each hypothetical day.
daily_stock_price = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stockpicker(daily_stock_price)
  buy_price = daily_stock_price[0]
  sell_price = 0
  buy_day = 0
  sell_day = 0
  max_profit = 0

  lowest_buy = 0
  highest_sell = 0
  best_buy = 0
  best_sell = 0

  daily_stock_price.each_with_index do |price, index|
    if buy_price > price
      buy_price = price
      buy_day = index
    end

    if index > buy_day
      sell_price = price
      sell_day = index
    end

    profit = sell_price - buy_price

    if profit > max_profit
      max_profit = profit
      lowest_buy = buy_price
      highest_sell = sell_price
      best_buy = buy_day
      best_sell = sell_day
    end
    puts "Iteration: Buy day #{buy_day} and sell day #{sell_day} for a profit of $#{sell_price} - #{buy_price} = #{profit}"
  end
  puts "[#{best_buy},#{best_sell}]  # for a profit of $#{highest_sell} - $#{lowest_buy} = $#{max_profit}"
end

stockpicker(daily_stock_price)
