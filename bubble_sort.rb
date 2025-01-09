def bubble_sort(arr)
  swap_done = true
  
  while swap_done do 
    swap_done = false
    
    arr.each_with_index do |number, index|
      if index == arr.size - 1
        next
      end
      if number > arr[index + 1]
        arr[index] = arr[index + 1]
        arr[index + 1] = number
        swap_done = true
        next
      end
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])