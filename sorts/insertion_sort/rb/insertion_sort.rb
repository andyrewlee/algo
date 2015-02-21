bigo = [7, 6, 5, 4, 3, 2, 1];
bigomega = [1, 2, 3, 4, 5, 6, 7];

def insertion_sort(arr)
  for i in 1...arr.length
    temp = arr[i]
    counter = i

    while counter > 0 && arr[counter - 1] > temp
      arr[counter] = arr[counter - 1]
      counter -= 1
    end

    arr[counter] = temp
  end

  return arr
end

puts(insertion_sort(bigo))
puts(insertion_sort(bigomega))
