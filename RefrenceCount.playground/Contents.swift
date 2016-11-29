//: Playground - noun: a place where people can play

import UIKit

//class Person {
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//        print("person initialize")
//    }
//    
//    deinit {
//        print("person deinitialize")
//    }
//}
//
//var person1: Person? = Person(name: "qinxin")
//var person2 = person1
//var person3 = person2
//
//person1  = nil
//person2 = nil


class SmartAirConditioner {
    var temprature: Int = 26
    var tempratureChange: ((Int) -> ())!
    
    init() {
        tempratureChange = { [unowned self] newTemprature in
            
            if abs(newTemprature - self.temprature) >= 10 {
                print("it's not healthy")
            } else {
                self.temprature = newTemprature
                print("it's new temprature = \(newTemprature)")
            }
        }
    }
    
    deinit {
        print("deinit")
    }
    
}

var smart: SmartAirConditioner? = SmartAirConditioner()
smart?.tempratureChange(100)
smart = nil
