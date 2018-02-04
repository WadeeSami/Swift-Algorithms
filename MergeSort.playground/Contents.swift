func merge<T:Comparable>(_ left:[T],_ right:[T])->[T]{
    var leftIndex = 0
    var rightIndex = 0
    var resultedList = [T]()
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex]{
            resultedList.append(left[leftIndex])
            leftIndex += 1
        }else if right[rightIndex] < left[leftIndex] {
            resultedList.append(right[rightIndex])
            rightIndex += 1
        }else{
            resultedList.append(left[leftIndex])
            resultedList.append(right[rightIndex])
            leftIndex += 1
            rightIndex += 1
        }
    }

    while leftIndex < left.count{
        resultedList.append(left[leftIndex])
        leftIndex += 1
    }

    while rightIndex < right.count{
        resultedList.append(right[rightIndex])
        rightIndex += 1
    }

    return resultedList
}

func mergeSort<T: Comparable>(_ list:[T])->[T]{
    guard  list.count > 1 else{ return list }
    let middle = list.count/2
    var leftList = Array(list[0..<middle])
    var rightList = Array(list[middle..<list.count])
    leftList = mergeSort(leftList)
    rightList = mergeSort(rightList)
    return merge(leftList, rightList)

}

let source:[Int] = [7,2,6,3,9]
print(mergeSort(source))
