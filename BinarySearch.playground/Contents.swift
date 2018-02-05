//recursive implementation
func binarySearch<T:Comparable>(list:[T], element:T, range:Range<Int>)->Int?{
    if range.lowerBound >= range.upperBound {
        return nil
    }
    
    // middle index
    let mid = (range.upperBound + range.lowerBound) / 2
    
    if list[mid] > element {
        return binarySearch(list: list, element: element, range: mid+1 ..< range.lowerBound-1)
    }else if list[mid] < element {
        return binarySearch(list: list, element: element, range: range.lowerBound+1 ..< list.count)
    }else{
        return mid
    }
}

// iterative implementation
func iterative_bs<T:Comparable>(list:[T], element:T)->Int?{
    var lower = 0
    var upper = list.count
    while lower < upper {
        let mid = (lower + upper ) / 2
        if list[mid] > element {
            upper = mid 
        }else if list[mid] < element {
            lower = mid + 1
        }else{
            return mid
        }
        
    }
    
    return nil
}


let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
binarySearch(list: numbers, element: 43, range: 0 ..< numbers.count)
iterative_bs(list: numbers, element: 43)

