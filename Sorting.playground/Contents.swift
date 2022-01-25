import UIKit

var marks = [3,4,5,1,9,9,123,2134,3423,23,123,21,312]

let numberToFind = 1

////////////////////////// Selection Sort ////////////////////////   /  // / / / / /

func selectionSort(arr: inout [Int]) -> [Int]{
    for i in 0..<arr.count - 1{
        var smallest = i
        for j in i+1..<arr.count{
            if arr[j] < arr[smallest]{
                smallest = j
            }
        }
        let temp = arr[i]
        arr[i] = arr[smallest]
        arr[smallest] = temp
    }
    return arr
}


/////////////////////////////////////// Bubble Sort ////////////////////////////

func bubbleSort(arr: inout [Int]) -> [Int]{
    for _ in 0...arr.count - 1{
        for j in 0...arr.count - 2{
            if arr[j] > arr[j+1]{
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            }
        }
    }
    return arr
    
}

/////////////////////////////////////// Merge Sort ////////////////////////////

func mergeSort(array: inout [Int]) -> [Int]{
    
    guard array.count > 1 else{
        return array
    }
    
    var left = Array(0..<array.count/2)
    var right = Array(array.count/2..<array.count)
    
    return merge(leftArr: mergeSort(array: &left), rightArr: mergeSort(array: &right))
}

func merge(leftArr : [Int], rightArr : [Int]) -> [Int]{
    
    var left = leftArr
    var right = rightArr
    
    var mergedArray:[Int] = []
    
    while left.first! > 0 && right.first! > 0{
        
        if left.first! > right.first!{
            mergedArray.append(left.removeFirst())
        }
        else{
            mergedArray.append(right.removeFirst())
        }
        
    }
    
    return mergedArray
}
