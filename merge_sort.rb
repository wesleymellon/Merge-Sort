def merge(arr1, arr2)
  new_arr = []
  i = j = 0

  while i < arr1.length && j < arr2.length do 
    if arr1[i] < arr2[j]
      new_arr.push(arr1[i])
      i += 1
    else
      new_arr.push(arr2[j])
      j += 1
    end
  end

  if i < arr1.length
    new_arr.push(arr1[i, arr1.length])
  elsif j < arr2.length
    new_arr.push(arr2[j, arr2.length])
  end
  new_arr.flatten!
end

def merge_sort(arr)
  if arr.length < 2
    return arr

  else
    a = merge_sort(arr[0, arr.length/2])
    b = merge_sort(arr[arr.length/2, arr.length])
    merge(a,b)
  end
end
