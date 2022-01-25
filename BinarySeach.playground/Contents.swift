import UIKit

let marks = [0,1,2,3,4,5,6,7]

let numberToFind = 0

func binarySearch(start:Int,end:Int) -> Bool{
    
    print("\(start) , \(end)")
    
    if start >= end{
        return false
    }
    
    let mid = start + end / 2
    if numberToFind == marks[mid]{
        return true
    }
    else if numberToFind < marks[mid]{
        return binarySearch(start: start, end: mid)
    }
    else if numberToFind > marks[mid]{
        return binarySearch(start: mid, end: end)
    }
    else{
        return false
    }
}

//////////////////////// Binary Search Recursive  /////////////////////


func binarySearchRecursive(range:Range<Int>) -> Bool{
    
    let midIndex = (range.startIndex + range.endIndex) / 2
    print(range)
    if range.startIndex >= range.endIndex{
        return false
    }
    if numberToFind == marks[midIndex]{
        return true
    }
    else if numberToFind > marks[midIndex]{
        return binarySearchRecursive(range: midIndex+1..<range.endIndex)
    }
    else if numberToFind < marks[midIndex]{
        return binarySearchRecursive(range: range.startIndex..<midIndex)
    }
    else {
        return false
    }
}
