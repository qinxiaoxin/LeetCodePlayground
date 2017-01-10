//: Playground - noun: a place where people can play

import UIKit

//选择排序
//func selectSort<T: Comparable>(arr: [T], count: Int) -> [T] {
//    
//    var arr = arr
//    
//    for i in 0..<count {
//        
//        var minIndex = i
//        
//        for j in i + 1..<count {
//            if arr[j] < arr[minIndex] {
//                minIndex = j
//            }
//        }
//        
//        if i != minIndex {
//            swap(&arr[i], &arr[minIndex])
//        }
//    
//    }
//    
//    return arr
//}

//插入排序
//func insertSort(arr: [Int], count: Int) -> [Int] {
//    
//    var arr = arr
//    
//    for i in 1 ..< count {
//        
//        var j = i
//        let temp = arr[j]
//        
//        while j > 0 && arr[j - 1] > temp {
//            arr[j] = arr[j - 1]
//            j -= 1
//        }
//        
//        arr[j] = temp
//        
//    }
//    
//    return arr
//    
//}

//class SortTestHelper {
//    class func generateRandomArray(n: Int, rangeL: Int, rangeR: Int) -> [Int] {
//        
//        assert(rangeL <= rangeR)
//        
//        var result: [Int] = [Int]()
//        
//        for _ in 0..<n {
//            result.append(Int(arc4random()) % (rangeR - rangeL + 1) + rangeL)
//        }
//        
//        return result
//    }
//}

//var arr = SortTestHelper.generateRandomArray(n: 5, rangeL: 66, rangeR: 120)
//insertSort(arr: arr, count: 5)

//let orignArray: [Any] = [1,[4,3],6,[5,[1,0]]]
//
//func allObject() -> [Int] {
//    var result = [Int]()
//    fillArray(array: orignArray, into: &result)
//    return result
//}
//
//func fillArray(array: [Any], into: inout [Int]) {
//    
//    for i in array {
//        
//        switch i {
//        case let item as Array<Any>:
//            fillArray(array: item, into: &into)
//            break
//        default:
//            into.append(i as! Int)
//            break
//        }
//        
//    }
//
//}
//
//allObject()
