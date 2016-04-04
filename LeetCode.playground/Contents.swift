//: Playground - noun: a place where people can play

import UIKit

/*#1 Two Sum
Level: medium
Given an array of integers, find two numbers such that they add up to a specific target number.
The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
You may assume that each input would have exactly one solution.
Input: numbers={2, 7, 11, 15}, target=9
Output: index1=1, index2=2
Inspired by @naveed.zafar at https://leetcode.com/discuss/10947/accepted-c-o-n-solution
*/

// Helper
//private extension String {
//    subscript (index: Int) -> Character {
//        return self[self.startIndex.advancedBy(index)]
//    }
//    
//    subscript (range: Range<Int>) -> String {
//        return self[self.startIndex.advancedBy(range.startIndex)..<self.startIndex.advancedBy(range.endIndex)]
//    }
//}


//class Meduim_001_Two_Sum {
//    class func twoSum(intArray: [Int], target: Int) -> [Int] {
//        var reslut: [Int] = []
//        var dict: Dictionary<Int, Int> = Dictionary()
//        for i in 0..<intArray.count {
//            let number = target - intArray[i]
//            if let numberToFind = dict[number] {
//                reslut.append(numberToFind + 1)
//                reslut.append(i + 1)
//            } else {
//                dict[intArray[i]] = i
//            }
//        }
//        return reslut
//    }
//}
//
//let reslut = Meduim_001_Two_Sum.twoSum([2,5,7,9], target: 12)

//class Easy_006_ZigZag_Conversion {
//    class func convert(s: String, nRows: Int) -> String {
//        var arr = Array<String>(count: nRows, repeatedValue: String())
//        var i = 0, len = s.characters.count
//        while i < len {
//            for var index = 0; index < nRows && i < len; index++ {
//                arr[index].append(s[i++])
//            }
//            for var index = nRows - 2; index > 0 && i < len; index-- {
//                arr[index].append(s[i++])
//            }
//        }
//        var result = String()
//        for i in 0..<arr.count {
//            result += arr[i]
//        }
//        return result
//    }
//}
//
//var input: [AnyObject] = ["PAYPALISHIRING", 3]
//let result = Easy_006_ZigZag_Conversion.convert(input[0] as! String, nRows: input[1] as! Int)
//print("result = \(result)")


//class Easy_007_Reverse_Integer {
//    class func reverse(x: Int) -> Int {
//        var neg = false
//        var i = x
//        if x < 0 {
//            neg = true
//            i = -x
//        }
//
//        var res: UInt = 0
//        while i / 10 > 0 {
//            res = res * 10 + UInt(i % 10)
//            i = i / 10
//        }
//        res = res * 10 + UInt(i % 10)
//
//        if neg {
//            return -1 * Int(res)
//        } else {
//            return Int(res)
//        }
//    }
//}
//
//let a = Easy_007_Reverse_Integer.reverse(-365)


//class Easy_008_String_to_Integer_atoi {
//    // O (N)
//    class func atoi(str: String) -> Int {
//        var sign: Bool = true, len: Int = str.characters.count, base: Int = 0
//        for j in 0..<len {
//            let zeroString: String = String("0")
//            let zeroValue: Int = Int(zeroString.utf8[zeroString.utf8.startIndex])
//            if base == 0 && str[j] == " " || str[j] == "+" {
//                continue
//            } else if base == 0 && str[j] == "-" {
//                sign = false
//                continue
//            } else {
//                let integerValue: Int = Int(str.utf8[str.utf8.startIndex.advancedBy(j)]) - zeroValue
//                if integerValue >= 0 && integerValue <= 9 {
//                    if base > Int.max / 10  || (base == Int.max / 10 && integerValue > 7) {
//                        if sign {
//                            return Int.max
//                        } else {
//                            return Int.min
//                        }
//                    }
//                    base = integerValue + 10 * base
//                }
//            }
//        }
//        if sign {
//            return base
//        } else {
//            return 0 - base
//        }
//    }
//}
//
//let result = Easy_008_String_to_Integer_atoi.atoi("999")
//print("result = \(result)")


//class PowerCalucate {
//    class func calculate(power: Int, index: Int) -> Int {
//        if power == 0 {
//            return 0
//        }else if index == 0{
//            return 1
//        }
//        return power * calculate(power, index: index - 1)
//    }
//}
//
//let a = PowerCalucate.calculate(9, index: 3)
//print("\(a)")


//class Easy_009_Palindrome_Number {
//    class func palindromeX(x: Int) -> Bool {
//        var palindrome: Int = 0
//        var temp: Int = x
//        
//        while temp > 0 {
//            
//            if palindrome >= Int.max / 10 {
//                return false
//            }
//            
//            palindrome = palindrome * 10 + temp % 10
//            temp = temp / 10
//        }
//        
//        return palindrome == x
//    }
//}
//
//let result = Easy_009_Palindrome_Number.palindromeX(232)


//class Easy_013_Roman_To_Integer {
//    // O (N)
//    // One pass
//    class func romanToInt(s  s: String) -> Int {
//        var result: Int = 0
//        let length: Int = s.characters.count
//        for var i = length-1; i >= 0; i-- {
//            let c: Character = s[i]
//            switch c {
//            case "I":
//                result += result >= 5 ? -1 : 1
//            case "V":
//                result += 5
//            case "X":
//                result += 10 * (result >= 50 ? -1 : 1)
//            case "L":
//                result += 50
//            case "C":
//                result += 100 * (result >= 500 ? -1 : 1)
//            case "D":
//                result += 500
//            case "M":
//                result += 1000
//            default:
//                break
//            }
//        }
//        return result
//    }
//}
//
//let result = Easy_013_Roman_To_Integer.romanToInt(s: "")
//print("result = \(result)")


//class Easy_014_Common_Prefix_String {
//    class func fetchPrefixString(arr: [String]?) -> String {
//        if let unwrapArray = arr {
//            
//            let string = unwrapArray[0]
//            let stringLength = string.characters.count
//            
//            for var i = 0; i < stringLength; i++ {
//                for var j = 1; j < unwrapArray.count; j++ {
//                    let c = string[i]
//                    if i == unwrapArray[j].characters.count || c != unwrapArray[j][i] {
//                        return unwrapArray[0][0..<i]
//                    }
//                }
//            }
//            return string
//        } else {
//            return ""
//        }
//    }
//}
//
//let result = Easy_014_Common_Prefix_String.fetchPrefixString(["avi","a","abc"])


//排序
//class Sort {
//    //最简单的排序
//    class func simpleSort(var arr: [Int]) -> [Int] {
//        for var i = 0; i < arr.count; i++ {
//            for var j = 0; j < arr.count; j++ {
//                if arr[i] < arr[j] {
//                    swap(&arr[i], &arr[j])
//                }
//            }
//        }
//        return arr
//    }
//    
//    //冒泡排序 -> 升级版 快速排序
//    class func bubbleSort(var arr: [Int]) -> [Int] {
//        for var i = 0; i < arr.count; i++ {
//            for var j = arr.count - 1; j > 0; j-- {
//                if arr[j - 1] > arr[j] {
//                    swap(&arr[j - 1], &arr[j])
//                }
//            }
//        }
//        return arr
//    }
//    
//    //选择排序 -> 升级版 堆排序
//    class func selectSort(var arr: [Int]) -> [Int] {
//        for var i = 0; i < arr.count - 1; i++ {
//            var min = i
//            for var j = i + 1; j < arr.count; j++ {
//                if arr[min] > arr[j] {
//                    min = j
//                }
//            }
//            if min != i {
//                swap(&arr[min], &arr[i])
//            }
//        }
//        return arr
//    }
//    
//    
    //插入排序 -> 升级版 希尔排序
//    class func insertSort(var arr: [Int]) -> [Int] {
//        var j = 0
//        for var i = 1; i < arr.count; i++ {
//            let temp = arr[i]
//            for j = i - 1; j >= 0 && arr[j] > temp; j-- {
//                arr[j + 1] = arr[j]
//            }
//            arr[j + 1] = temp
//        }
//        return arr
//    }
//
//}

//let result1 = Sort.simpleSort([57,93,77,23,90,100])
//let result2 = Sort.bubbleSort([57,93,77,23,90,100])
//let result3 = Sort.selectSort([57,93,77,23,90,100])
//let result4 = Sort.insertSort([57,93,77,23,90,100])


//class Easy_019_Remove_Nth_Node_from_end_Of_List {
//    class Node {
//        var value: Int
//        var next: Node?
//        
//        init(value: Int, next: Node?) {
//            self.value = value
//            self.next = next
//        }
//    }
//    
//    class func remove(head: Node, n: Int) -> Node? {
//        let dummyHead = Node(value: 0, next: head)
//        var fast: Node? = dummyHead, slow: Node? = dummyHead
//        var localN = n
//            
//        while localN-- > 0 {
//            fast = fast?.next
//        }
//            
//        while fast != nil && fast?.next != nil {
//            fast = fast?.next
//            slow = slow?.next
//        }
//            
//        slow?.next = slow?.next?.next
//            
//        return dummyHead.next
//    }
//}
//
//private typealias Node = Easy_019_Remove_Nth_Node_from_end_Of_List.Node
//
//private func helper1(arr: [Int]) -> Node? {
//    var nodeArray: [Node] = []
//    
//    for i in arr {
//        let node = Node(value: i, next: nil)
//        nodeArray.append(node)
//    }
//    
//    if nodeArray.count == 0 {
//        return nil
//    }
//    
//    for i in 0..<nodeArray.count - 1 {
//        nodeArray[i].next = nodeArray[i + 1]
//    }
//    
//    return nodeArray[0]
//}
//
//private func helper2(var head: Node?) -> [Int] {
//    var res: [Int] = []
//    while head != nil {
//        res.append(head!.value)
//        head = head?.next
//    }
//    return res
//}
//
//let arr = [23,54,78,2,43,16,100]
//let result = helper2(Easy_019_Remove_Nth_Node_from_end_Of_List.remove(helper1(arr)!, n: 2))


//class Easy_020_Valid_Parentheses {
//    class func isValid(s: String) -> Bool {
//        var charArray: [Character] = []
//        var char: Character
//        var dict: Dictionary<Character,Character> = Dictionary()
//        
//        dict["}"] = "{"
//        dict["]"] = "["
//        dict[")"] = "("
//        
//        for i in 0..<s.characters.count {
//            char = s[i]
//            if char == "}" || char == "]" || char == ")" {
//                if dict[char] != charArray.last {
//                    return false
//                } else {
//                    charArray.removeLast()
//                }
//            } else {
//                charArray.append(char)
//            }
//        }
//        
//        if charArray.count == 0 {
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
//let s = "[{()}]"
//let result = Easy_020_Valid_Parentheses.isValid(s)


//class Easy_021_Merge_Two_Sorted_Lists {
//    class Node {
//        var value: Int
//        var next: Node?
//        
//        init(value: Int = 0, next: Node? = nil) {
//            self.value = value
//            self.next = next
//        }
//    }
//    
//    class func merge(var l1 l1: Node?, var l2: Node?) -> Node? {
//        let dummyNode: Node = Node()
//        var tailNode: Node? = dummyNode
//        dummyNode.next = tailNode
//        
//        while l1 != nil && l2 != nil {
//            if l1!.value < l2!.value {
//                tailNode?.next = l1
//                l1 = l1?.next
//            } else {
//                tailNode?.next = l2
//                l2 = l2?.next
//            }
//            tailNode = tailNode?.next
//        }
//        
//        tailNode?.next = l1 != nil ? l1 : l2
//        return dummyNode.next
//    }
//}
//
//private typealias Node = Easy_021_Merge_Two_Sorted_Lists.Node
//
//private func helper1(arr: [Int]) -> Node? {
//    let dummyNode: Node = Node()
//    var currentNode: Node = Node(value: arr[0])
//    dummyNode.next = currentNode
//    
//    for i in 1..<arr.count {
//        let temp = Node(value: arr[i])
//        currentNode.next = temp
//        currentNode = temp
//    }
//    
//    return dummyNode.next
//}
//
//private func helper2(var node: Node?) -> [Int] {
//    var res: [Int] = []
//    while node != nil {
//        res.append(node!.value)
//        node = node?.next
//    }
//    return res
//}
//
//let arr1 = [1,3,5,7,9]
//let arr2 = [2,4,6,8,10]
//
//let reslut = helper2(Easy_021_Merge_Two_Sorted_Lists.merge(l1: helper1(arr1), l2: helper1(arr2)))


//class Easy_026_Remove_Duplicates_from_Sorted_Array {
//    class func removeDuplicates(arr: [Int]) -> [Int] {
//        var result: [Int] = []
//        var dict: Dictionary<String, Int> = Dictionary()
//        
//        for i in arr {
//            dict["\(i)"] = i
//        }
//        
//        for value in dict.values {
//            result.append(value)
//        }
//        
//        result = result.sort()
//        
//        return result
//    }
//}
//
//let arr = [5,1,1,5,6,20,25]
//let result = Easy_026_Remove_Duplicates_from_Sorted_Array.removeDuplicates(arr)


//class Easy_027_Remove_Element {
//    class func removeElement(arr: [Int], elem: Int) -> [Int] {
//        
//        var result = [Int]()
//        
//        for i in arr {
//            if elem != i {
//                result.append(i)
//            }
//        }
//        
//        result = Sort.insertSort(result)
//        
//        return result
//    }
//}
//
//let arr = [[2,4,7,3,6,1,3,9,0,3],3]
//let result = Easy_027_Remove_Element.removeElement(arr[0] as! [Int], elem: arr[1] as! Int)


//class Easy_028_Implement_StrStr {
//    class func strStr_brute_force(hayStack hayStack: String?, needle: String?) -> Int {
//        if hayStack == nil || needle == nil {
//            return -1
//        }
//        
//        for var i = 0; ;i++ {
//            for var j = 0; ;j++ {
//                if j >= needle!.characters.count {
//                    return i
//                }
//                if i + j >= hayStack!.characters.count {
//                    return -1
//                }
//                if hayStack![i + j] != needle![j] {
//                    break
//                }
//            }
//        }
//    }
//}
//
//let input = ["abcdef","de"]
//let result = Easy_028_Implement_StrStr.strStr_brute_force(hayStack: input[0], needle: input[1])


//class Easy_058_Length_of_Word {
//    class func lengthOfLastWord(s: String) -> Int {
//        var len = 0
//        
//        var i = 0
//        while i < s.characters.count {
//            if s[i++] != " " {
//                len++
//            } else if i < s.characters.count && s[i] != " " {
//                len = 0
//            }
//        }
//        return len
//    }
//}
//
//let result = Easy_058_Length_of_Word.lengthOfLastWord("abc ki olll j")


//class Easy_066_Plus_One {
//    static func plusArray(var arr: [Int]) -> [Int] {
//        for var i = arr.count - 1; i >= 0; i-- {
//            if arr[i] == 9 {
//                arr[i] = 0
//                if i == 0 {
//                    arr[0] = 1
//                    arr.append(0)
//                }
//            } else {
//                arr[i]++
//                break
//            }
//        }
//        return arr
//    }
//}
//
//let result = Easy_066_Plus_One.plusArray([8,8,9,9,9])


//struct Easy_067_Add_Binary {
//    static func addBinary(a a: String, b: String) -> String {
//        var reslut: String = ""
//        var cInt: Int = 0
//        var i: Int = a.characters.count - 1
//        var j: Int = b.characters.count - 1
//        var characterDict: [Character: Int] = [
//            "0" : 0,
//            "1" : 1,
//        ]
//        var intDict: [Int: String] = [
//            0 : "0",
//            1 : "1",
//        ]
//        
//        while i >= 0 || j >= 0 || cInt == 1 {
//            cInt += i >= 0 ? characterDict[a[i--]]! : 0
//            cInt += j >= 0 ? characterDict[b[j--]]! : 0
//            reslut = intDict[cInt % 2]! + reslut
//            cInt /= 2
//        }
//        
//        return reslut
//    }
//}
//
//let result = Easy_067_Add_Binary.addBinary(a: "11", b: "1")

//加入3步、4步该怎么算呢
//struct Easy_070_Climbing_Stairs {
//    static func climbingStairs(n: Int) -> Int {
//        var result: Int = 0
//        var stepOne: Int = 1
//        var stepTwo: Int = 1
//        
//        if n == 0 || n == 1 {
//            return 1
//        }
//        
//        for var i = 2; i <= n; i++ {
//            result = stepOne + stepTwo
//            stepTwo = stepOne
//            stepOne = result
//        }
//        return result
//    }
//}
//
//let reslut = Easy_070_Climbing_Stairs.climbingStairs(5)


//class Easy_083_Remove_Duplicates_From_Sorted_List {
//    class Node {
//        var value: Int
//        var next: Node?
//        
//        init(value: Int, next: Node?) {
//            self.value = value
//            self.next = next
//        }
//    }
//    
//    class func removeDuplicatesFromSortedList(head: Node?) -> Node? {
//        if head == nil {
//            return nil
//        }
//        
//        var currentNode: Node? = head
//        while currentNode?.next != nil {
//            if currentNode?.value == currentNode?.next?.value {
//                currentNode?.next = currentNode?.next?.next
//            } else {
//                currentNode = currentNode?.next
//            }
//        }
//        return head
//    }
//}

//private typealias Node = Easy_083_Remove_Duplicates_From_Sorted_List.Node
//
//private func helper1(var intArray: [Int]) -> Node? {
//    let dummyNode: Node? = Node(value: intArray[0], next: nil)
//    var currentNode: Node? = dummyNode
//    dummyNode?.next = currentNode
//    
//    intArray = intArray.sort()
//    for c in intArray {
//        let tempNode = Node(value: c, next: nil)
//        currentNode?.next = tempNode
//        currentNode = tempNode
//    }
//    
//    return dummyNode?.next
//    var nodeArray: [Node] = []
//    
//    if intArray.count == 0 {
//        return nil
//    }
//    
//    intArray = intArray.sort()
//    
//    for i in intArray {
//        let node: Node = Node(value: i, next: nil)
//        nodeArray.append(node)
//    }
//    
//    for i in 0..<nodeArray.count - 1 {
//        nodeArray[i].next = nodeArray[i + 1]
//    }
//    
//    return nodeArray[0]
    
//}

//private func helper2(var node: Node?) -> [Int] {
//    var reslutArray: [Int] = []
//    while node != nil {
//        reslutArray.append(node!.value)
//        node = node?.next
//    }
//    return reslutArray
//}
//
//let reslut: [Int] = helper2(Easy_083_Remove_Duplicates_From_Sorted_List.removeDuplicatesFromSortedList(helper1([2,2,3,36,7,36,8,99,8,45])))


//struct Easy_088_Merge_Sorted_Array {
//    static func merge(nums1 nums1: [Int], nums2: [Int])  -> [Int] {
//        var reslut: [Int] = []
//        
//        for i in nums1 {
//            reslut.append(i)
//        }
//        
//        for j in nums2 {
//            reslut.append(j)
//        }
//
//        return reslut
//    }
//}
//
//private func helper(intArray: [Int]) -> [Int] {
//    var reslutArray: [Int] = []
//    var intDict: Dictionary<String, Int> = Dictionary()
//    
//    for i in intArray {
//        intDict["\(i)"] = i
//    }
//    
//    for intValue in intDict.values {
//        reslutArray.append(intValue)
//    }
//    
//    reslutArray = reslutArray.sort()
//    
//    return reslutArray
//}
//
//let reslut = helper(Easy_088_Merge_Sorted_Array.merge(nums1: [1,3,66], nums2: [2,8,6,333,66,897]))


//struct Point {
//    let x: Double
//    let y: Double
//    
//    // 存储属性
//    static let zero = Point(x: 0, y: 0)
//    
//    // 计算属性
//    static var ones: [Point] {
//        return [Point(x: 1, y: 1),
//            Point(x: -1, y: 1),
//            Point(x: 1, y: -1),
//            Point(x: -1, y: -1)]
//    }
//    
//    // 类型方法
//    static func add(p1: Point, p2: Point) -> Point {
//        return Point(x: p1.x + p2.x, y: p1.y + p2.y)
//    }
//}

//Map Array
//let someArray: [Int]? = [1,2,3]
//let result = someArray.map{"No.\($0)"}
//result

// >
//let intArray: [Int] = [3,2,65,4,35,78,65]
//intArray.sort(>)

//Map
//let dict = [1:"一",2:"二",3:"三",4:"四",5:"五",6:"六",7:"七",8:"八",9:"九",0:"零"]
//let intArray = [23,457,89,321,7,54,17]
//
//intArray.map { (var number: Int) -> String in
//    var result: String = ""
//
//    while number > 0 {
//        result = dict[number % 10]! + result
//        number /= 10
//    }
//
//    return result
//}

//Int8 & UInt8
//Int8.max
//Int8.min
//UInt8.max
//UInt8.min

//Int16 & UInt16
//Int16.max
//Int16.min
//UInt16.max
//UInt16.min

//Int32 & UInt32
//Int32.max
//Int32.min
//UInt32.max
//UInt32.min

//Int64 & UInt64
//Int64.max
//Int64.min
//UInt64.max
//UInt64.min

//Swift 2.0
//for case let i in 1...100 where i % 3 == 0 {
//    print("\(i)")
//}

//x^4 - y^2 = 15*x*y
//findAnwser: for m in 1...300 {
//    for n in 1...300 {
//        if m*m*m*m - n*n == 15 * m * n {
//            print("\(m , n)")
//            break findAnwser
//        }
//    }
//}

//var t2 = 2
//switch t2 {
//case 1:
//    print("贯穿：1")
//    fallthrough
//case 2:
//    print("贯穿：2")
//    fallthrough
//case 3:
//    print("贯穿：3")
//    fallthrough
//default:
//    print("贯穿default")
//}

//test(name: "dzl", age: 25)

// % 区别于C、C++、Java, Swfit小数也可以作余数运算
//let a: Float = 2.5
//let b: Float = 1.2
//a % b

//var i = -2.6
//for ; i < 2.6;  {
//    i += 0.1
//    sin(i)
//}

// repeat while
//repeat {
//    var a = arc4random_uniform(10)
//    var b = arc4random_uniform(10)
//    
//    if a == b {
//        print("draw")
//        continue
//    }
//    
//    print("a = \(a)     b = \(b)")
//    
//    let winner: String = a > b ? "a":"b"
//    if winner == "a" {
//        print("a获胜")
//    } else {
//        print("b获胜")
//    }
//    break
//    
//}while true

//switch ()
//var y = true
//switch y {
//case true:
//    ()
//case false:
//    ()
//}

//let s = "\"string\""
//var str = "Hello World"
//let mark: Character = "!"
//str.append(mark)

//let englishLetter: Character = "a"
//let chineseLetter: Character = "秦"
//let dog: Character = "🐶"
//let coolGuy: Character = "\u{1F60E}"
//
//let chineseLetters: String = "闷声发大财"
//chineseLetters.characters.count

//var str = "Hello, Swift2.2"
//
//let startIndex = str.startIndex
//let endIndex = str.endIndex
//let range = startIndex...endIndex.predecessor()
//
//let endHello = startIndex.advancedBy(4)
//let rangHello = startIndex...endHello
//str.replaceRange(rangHello, with: "Hi")
//
//str.removeRange(str.endIndex.advancedBy(-2)...str.endIndex.predecessor())
//str.appendContentsOf(".2")
//str.insert("🐶", atIndex: rangHello.endIndex.predecessor())
//
//str.containsString(", 🐶")

//var str = "     ------ Hello World --------    "
//str = (str as NSString).stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " - "))
//str.uppercaseString


/**
   第一届Swift大会
 */
//var someArray: [Int]?
//someArray = [1,2,3]
//let some = someArray.map { ("No.\($0)") }
//print(some)

//enum
//enum TransportModel: String {
//    case Airplane = "✈️"
//    case Boat = "🚢"
//    case Truck = "🚚"
//    case Rocket = "🚀"
//}
//
//let t = TransportModel.Rocket
//t.rawValue

//使用 mutating 关键字修饰方法是为了能在该方法中修改 struct 或是 enum 的变量
//protocol ExampleProtocol {
//    var simpleDescription: String { get }
//    mutating func adjust()
//}
//
//class SimpleClass: ExampleProtocol {
//    var simpleDescription: String = "A very simple class"
//    var anotherProperty: Int = 110
//    // 在 class 中实现带有mutating方法的接口时，不用mutating进行修饰。因为对于class来说，类的成员变量和方法都是透明的，所以不必使用 mutating 来进行修饰
//    func adjust() {
//        simpleDescription += " Now 100% adjusted"
//    }
//}
//
//struct SimpleStruct: ExampleProtocol {
//    var simpleDescription: String = "A simple structure"
//    mutating func adjust() {
//        simpleDescription += "(adjusted)"
//    }
//}
//
//enum SimpleEnum: ExampleProtocol {
//    case First, Second, Third
//    var simpleDescription: String {
//        get {
//            switch self {
//            case .First:
//                return "first"
//            case .Second:
//                return "second"
//            case .Third:
//                return "third"
//            }
//        }
//        
//        set {
//            simpleDescription = newValue
//        }
//    }
//    
//    mutating func adjust() {
//        simpleDescription += "(adjusted)"
//    }
//}