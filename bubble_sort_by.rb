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


p bubble_sort_by(arr_string2) {|left,right| left.length - right.length }

