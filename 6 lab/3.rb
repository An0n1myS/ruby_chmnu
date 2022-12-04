arr = [[[1, [2]], 3], [4, 5, 6], [7, [8, 9]]]

def walk(array)
    array.flatten.map { |i| pp i }
end

pp arr
pp walk(arr)
