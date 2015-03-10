list = [4, 3, 2, 5, 6, 1, 7]

def quick_sort(arr)
  return arr if arr.length < 2
  pivot, left, right = arr[0], [], []

  for i in 1...arr.length
    arr[i] < pivot ? left << arr[i] : right << arr[i]
  end

  return quick_sort(left) + [pivot] + quick_sort(right)
end


puts quick_sort(list)
