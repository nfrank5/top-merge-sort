def merge_sort(arr)

  merged_arr = []
  return arr if arr.length == 1

  first_half = merge_sort(arr[0, arr.length / 2])
  second_half = merge_sort(arr[arr.length / 2, arr.length])

  until first_half.empty? && second_half.empty? do

    if second_half.empty?
      merged_arr.push(first_half.shift)
    elsif first_half.empty?
      merged_arr.push(second_half.shift) 
    elsif first_half[0] < second_half[0]
      merged_arr.push(first_half.shift)
    else
      merged_arr.push(second_half.shift) 
    end

  end

  merged_arr

end

p merge_sort ([5,1,7,3,4,6,8,2,9,45,6,41,56,4,8,4,84,54,4])