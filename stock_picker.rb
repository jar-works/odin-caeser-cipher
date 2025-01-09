def stock_picker(stocks_arr)
  pairs = []

  i = 0
  j = 1

  while i < stocks_arr.length - 1
    while i + j < stocks_arr.length
      pairs.push([stocks_arr[i], stocks_arr[i + j]])
      j += 1
    end
    j = 1
    i += 1
  end

  calculated_pairs = pairs.map() {|pair| pair[1] - pair[0]}
  
  best_result = 0
  calculated_pairs.each do |value|
    if value > best_result
      best_result = value
    end
  end

  best_pair = pairs[calculated_pairs.find_index(best_result)]

  result = []
  result.push(stocks_arr.find_index(best_pair[0]))
  result.push(stocks_arr.find_index(best_pair[1]))
  p result
end

stock_picker([17,3,6,9,15,8,6,1,10])