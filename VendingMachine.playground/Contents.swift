//: Playground - noun: a place where people can play

import UIKit

class VendingMachine {
    
    struct Item {
        
        enum Typed: String {
            case Water
            case Cola
            case Juice
        }
        
        let type: Typed
        let price: Int
        var count: Int
        
    }
    
    enum VMError: Error, CustomStringConvertible {
        case NoSuchItem
        case NoEnoughMoney(Int)
        case OutOfStock
        
        var description: String {
            switch self {
            case .NoSuchItem:
                return "no such item"
            case .NoEnoughMoney(let price):
                return "no enough Money " + String(price)
            case .OutOfStock:
                return "out of stock"
            }
        }
    }
    
    private var items = ["Mineral Water": Item(type: .Water, price: 2, count: 10),
                         "Coca Cola": Item(type: .Cola, price: 3, count: 3),
                         "Orange Juice": Item(type: .Juice, price: 4, count: 1)]
    
    func vend(itemName: String, money: Int) throws -> Int {
        
        guard let item = items[itemName] else {
            throw VMError.NoSuchItem
        }
        
        guard money >= item.price else {
            throw VMError.NoEnoughMoney(item.price)
        }
        
        guard item.count > 0 else {
            throw VMError.OutOfStock
        }
        
        dispenseItem(itemName: itemName)
        
        return money - item.price
        
    }
    
    private func dispenseItem(itemName: String) {
        items[itemName]?.count -= 1
        print("Enjoy your", itemName)
    }
    
}

//let vm = VendingMachine()

//try! vm.vend(itemName: "Orange Juice", money: 10)

//if let leftMoney = try? vm.vend(itemName: "Orange Juice", money: 1) {
//    
//} else {
//    //Handlying Error
//    
//    
//}

//do {
//    var pocketMoney = 2
//    pocketMoney = try vm.vend(itemName: "Orange Juice", money: pocketMoney)
//} catch VendingMachine.VMError.NoSuchItem {
//    print("no such item")
//} catch VendingMachine.VMError.NoEnoughMoney(let price) {
//    print("no enough Money", price)
//}catch VendingMachine.VMError.OutOfStock {
//    print("out of stock")
//}

//do {
//    var pocketMoney = 2
//    pocketMoney = try vm.vend(itemName: "Orange Juice", money: pocketMoney)
//} catch let error as VendingMachine.VMError {
//    print(error)
//}
