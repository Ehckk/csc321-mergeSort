def mergeSort(array)
    size = array.size
    if size <= 1 then return array end
    # puts "Splitting: #{array}"
    mid = (size / 2).floor
    left = array[0...mid]
    right = array[mid...size]
    return merge(mergeSort(left), mergeSort(right))
end

def merge(left, right)
    sorted = []
    i = j = 0
    while i < left.size && j < right.size
        if left[i] <= right[j]            
            sorted << left[i]
            i += 1
        else
            sorted << right[j]
            j += 1
        end
    end
    while i < left.size
        sorted << left[i]
        i += 1
    end
    while j < right.size
        sorted << right[j]
        j += 1
    end
    # puts "Merging #{left} and #{right}: -> #{sorted}"
    return sorted
end

testCases = [
    [50, 20, 40, 60, 10, 30],
    [8, 6, 5, 10, 7, 10, 3, 9],
    [63, 4, 70, 88, 74, 18, 55, 44, 85, 61],
    [27, 28, 35, 58, 6, 97, 23, 34, 26, 14, 99, 61, 33, 41, 49],
    [78, 52, 10, 85, 36, 90, 78, 89, 52, 58, 45, 80, 89, 78, 44, 7, 77, 89, 1, 27, 3, 84, 15, 93, 55, 42, 57, 69, 12, 16, 24, 64, 91, 1, 47]    
]

for testCase in testCases do
    puts "Initial: #{testCase}"
    puts "Result: #{mergeSort(testCase)}"
    puts
end