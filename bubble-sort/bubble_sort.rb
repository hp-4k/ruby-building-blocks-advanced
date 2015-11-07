def bubble_sort(array)
  new_array = array.dup
  sorted = false
  until sorted
    sorted = true
    for i in (0...new_array.length-1)
      if new_array[i] > new_array[i+1]
        sorted = false
        new_array[i], new_array[i+1] = new_array[i+1], new_array[i]
      end
    end
  end
  new_array
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  new_array = array.dup
  sorted = false
  until sorted
    sorted = true
    for i in (0...new_array.length-1)
      if yield(new_array[i], new_array[i+1]) > 0
        sorted = false
        new_array[i], new_array[i+1] = new_array[i+1], new_array[i]
      end
    end
  end
  new_array 
end

result = bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end
p result
