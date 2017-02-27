//: Playground - noun: a place where people can play

import UIKit

/**问题
        给你两个链表，分别表示两个非负的整数。每个链表的节点表示一个整数位。
        为了方便计算，整数的低位在链表头，例如：123 在链表中的表示方式是：
        3 -> 2 -> 1
        现在给你两个这样结构的链表，请输出它们求和之后的结果。例如：
        输入: (2 -> 4 -> 1) + (5 -> 6 -> 1)
        输出: 7 -> 0 -> 3
 */

private class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

private class Solution {
    
    private static func getNodeValue(_ node: ListNode?) -> Int {
        return node.flatMap{ $0.val } ?? 0
    }
    
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?)
//        -> ListNode? {
//            if l1 == nil || l2 == nil {
//                return l1 ?? l2
//            }
//            
//            
//    }
}
