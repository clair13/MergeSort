
def merge_sort(array)
  return array if array.length < 2
  half = array.length / 2
  left = merge_sort(array[0..half-1])
  right = merge_sort(array[half..-1])

  merge(left,right)
end

def merge(left,right)
  sorted = []
  until left.empty? || right.empty?
    left[0] < right[0] ? sorted << left.shift : sorted << right.shift
  end
  sorted + left + right
end





