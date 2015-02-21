bigo = [7, 6, 5, 4, 3, 2, 1]
bigomega = [1, 2, 3, 4, 5, 6, 7]

def merge_sort(arr)
  if arr.length < 2
    return arr
  end

  middle = arr.length/2 # int/int will return int
  left = arr[0...middle]
  right = arr[middle...arr.length]
  return merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  output = []

  while(left.length != 0 && right.length != 0)
    left[0] <= right[0] ? output.push(left.shift) : output.push(right.shift)
  end

  output.push(left.shift) while(left.length != 0)
  output.push(right.shift) while(right.length != 0)
  return output
end


puts merge_sort(bigo)
puts merge_sort(bigomega)
