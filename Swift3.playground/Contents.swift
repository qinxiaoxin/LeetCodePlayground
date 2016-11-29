//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

//for i in 1 ..< 10 {
//    print(i)
//}

//for i in (1..<10).reversed() {
//    print(i)
//}

//

//for i in stride(from: 10, through: 0, by: -2) {
//    print(i)
//}

//var str = "Hello Swift"
//str.append("!")
////str
//str.appending("!!!!")
//str

//let vector = (4, 0)
//
//if case (let x, 0) = vector, x > 0 && x < 5 {
//    print("yeah")
//}


//func doMatch(a: Int?, b: Int?, c: Int?) -> Int? {
//    guard let a = a, let b = b, let c = c, b > 0, a <= 0, c % 2 == 0 else {
//        return nil
//    }
//    
//    return  0
//}

//func anyCommonElements<T: Sequence, U: Sequence>(lhs: T, _rhs: U) -> Bool
//    where
//        T.Iterator.Element: Equatable,
//        T.Iterator.Element == U.Iterator.Element {
//    
//    
//    
//    return false
//}

//let endAge = CGFloat.pi

//let queue = DispatchQueue(label: "me.qinxin")
//
//queue.async {
//    for i in 0...10000 {
//        print(i, "play swift")
//    }
//}
//
//for i in 0...1000 {
//    print(i, "play oc")
//}

//func mYFatalError() -> Never {
//    print("!!!!")
//    fatalError()
//}
//
//func mod(_ a: Int, _ b: Int) -> Int {
//    guard b != 0 else {
//         mYFatalError()
//    }
//    
//    return a % b
//}
//
//mod(10, 2)

//let beta: CGFloat = 3.0
//beta * .pi

//infix operator %%
//
//func %%<T>(a: T?, b: @autoclosure () -> T) -> T {
//    if let result = a {
//        return result
//    }
//    
//    return b()
//}
//
//func login(username: String, password: String) -> String? {
//    print("login...")
//    return username
//}
//
//func generateName() -> String {
//    print("generate")
//    return "guest"
//}
//
//let user1 = login(username: "qinxin", password: "xiaoxin123") %% generateName()
//let user2 = login(username: "ameba", password: "5986461") %% "Guest"
