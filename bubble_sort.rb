def bubble_sort(arr)
  n = arr.length

  (n-1).times do
    p arr
    sorted = true

    for i in 0..n-2
      if arr[i] > arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
        sorted = false
      end
    end
    return arr if sorted
  end

  return arr
end


# p bubble_sort([4,3,78,2,0,2])

p bubble_sort([4,3,78,2,0,2, 7, 1, 5, 3, 32, 18])

# p bubble_sort([4,3,78,2,0,2, 5, 19, 2, 12, 67, 89])