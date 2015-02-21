bigo = [7, 6, 5, 4, 3, 2, 1];
bigomega = [1, 2, 3, 4, 5, 6, 7];

def swap(arr, index_one, index_two)
  temp = arr[index_one]
  arr[index_one] = arr[index_two]
  arr[index_two] = temp
end

def selection_sort(arr)
  for i in 0...arr.length
    min_index = i
    i.upto(arr.length - 1) do |j|
      if arr[j] < arr[min_index]
        min_index = j
      end
    end
    swap(arr, i, min_index) if min_index != i
  end
  return arr
end


puts selection_sort(bigo)
puts selection_sort(bigomega)
