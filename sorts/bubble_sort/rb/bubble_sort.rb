bigo = [7, 6, 5, 4, 3, 2, 1];
bigomega = [1, 2, 3, 4, 5, 6, 7];

def swap(arr, index_one, index_two)
  temp = arr[index_one]
  arr[index_one] = arr[index_two]
  arr[index_two] = temp
end

def bubble_sort(arr)
  for i in 0...(arr.length - 1)
    for j in 0...(arr.length - 1 - i)
      swap(arr, j, j+1) if arr[j] > arr[j+1]
    end
  end
  return arr
end

def better_bubble(arr)
  count = 0
  loop do
    swapping = false
    for i in 0...(arr.length - 1 - count)
      if arr[i] > arr[i+1]
        swap(arr, i, i+1)
        swapping = true
      end
    end
    break if swapping == false
  end
  return arr
end

puts bubble_sort(bigo)
puts better_bubble(bigo)

puts bubble_sort(bigomega)
puts better_bubble(bigomega)
