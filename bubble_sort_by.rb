def bubble_sort_by(arr)
  n = arr.length

  (n-1).times do
    sorted = true
    for i in 0..n-2
      if yield(arr[i], arr[i+1]) > 0
        sorted = false
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
    end
    return arr if sorted
  end

  return arr
end

arr_string1 = ["hi","hello","hey"]

arr_string2 = ["hi","hello","hey", "o", "Yes, Please!", "no", "I", "Solution"]

arr_string3 = ["go", "come","hi","hello","hey", "what", "how"]

arr_string4 = ["hi","yes, please", "left", "right", "ok", "hello","hey"]

array1 = [5, 4, 3, 2, 1]

array2 = [4, 3, 78, 2, 0, 2]

array3 = [4, 3, 78, 2, 0, 2, 7, 1, 5, 3, 32, 18]

array4 = [4, 3, 78, 2, 0, 2, 5, 19, 2, 12, 67, 89]

# change the array name in following line to see the result! 

p bubble_sort_by(arr_string2) {|left,right| left.length - right.length } #by length

p bubble_sort_by(arr_string3) {|left,right| left[0] <=> right[0] } #by alphabetic 

p bubble_sort_by(array2) {|left,right| left - right } # by value 

