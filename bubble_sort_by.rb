def bubble_sort_by(arr)
  n = arr.length

  (n-1).times do
    sorted = true
    for i in 0..n-2
      if arr[i] > arr[i+1]
        sorted = false
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
    end
    return arr if sorted
  end

  return arr
end