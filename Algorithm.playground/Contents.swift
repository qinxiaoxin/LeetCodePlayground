//: Playground - noun: a place where people can play

//import UIKit

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
//        let temp = arr[i]
//        
//        let j = 0
//        
//        for j in stride(from: i, to: 0, by: -1) {
//            print(j)
//            if arr[j - 1] > temp {
//                print(arr[j - 1], temp)
//                arr[j] = arr[j - 1]
//            }
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
//
//var arr = SortTestHelper.generateRandomArray(n: 5, rangeL: 66, rangeR: 120)
//arr
